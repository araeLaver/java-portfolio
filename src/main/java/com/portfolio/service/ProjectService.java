package com.portfolio.service;

import com.portfolio.dto.Project;
import com.portfolio.entity.ProjectEntity;
import com.portfolio.repository.ProjectRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.commonmark.node.Node;
import org.commonmark.parser.Parser;
import org.commonmark.renderer.html.HtmlRenderer;

@Service
public class ProjectService {

    @Autowired
    private ProjectRepository projectRepository;
    
    private final Parser parser;
    private final HtmlRenderer renderer;

    public ProjectService() {
        this.parser = Parser.builder().build();
        this.renderer = HtmlRenderer.builder().build();
    }

    @Transactional(readOnly = true)
    public List<Project> getProjects() {
        return projectRepository.findAll().stream()
                .map(entity -> {
                    // Force loading of lazy collection
                    if (entity.getStack() != null) {
                        entity.getStack().size(); // Force initialization
                    }
                    return convertToDto(entity);
                })
                .collect(Collectors.toList());
    }

    @Transactional(readOnly = true)
    public Optional<Project> getProjectById(String id) {
        return projectRepository.findById(id)
                .map(entity -> {
                    // Force loading of lazy collection
                    if (entity.getStack() != null) {
                        entity.getStack().size(); // Force initialization
                    }
                    Project project = convertToDto(entity);
                    if (project.getDetails() != null) {
                        Node document = parser.parse(project.getDetails());
                        project.setDetails(renderer.render(document)); // Convert markdown to HTML
                    }
                    return project;
                });
    }

    public void saveProject(Project project) {
        ProjectEntity entity = convertToEntity(project);
        projectRepository.save(entity);
        System.out.println("Saved project to database: " + project.getTitle());
    }

    public void deleteProject(String id) {
        if (projectRepository.existsById(id)) {
            projectRepository.deleteById(id);
            System.out.println("Deleted project with ID: " + id);
        } else {
            System.out.println("Project not found with ID: " + id);
        }
    }
    
    private Project convertToDto(ProjectEntity entity) {
        Project dto = new Project();
        dto.setId(entity.getId());
        dto.setTitle(entity.getTitle());
        dto.setDescription(entity.getDescription());
        dto.setGitUrl(entity.getGitUrl());
        dto.setLiveUrl(entity.getLiveUrl());
        dto.setStack(entity.getStack());
        dto.setDetails(entity.getDetails());
        return dto;
    }
    
    private ProjectEntity convertToEntity(Project dto) {
        ProjectEntity entity = new ProjectEntity();
        entity.setId(dto.getId());
        entity.setTitle(dto.getTitle());
        entity.setDescription(dto.getDescription());
        entity.setGitUrl(dto.getGitUrl());
        entity.setLiveUrl(dto.getLiveUrl());
        entity.setStack(dto.getStack());
        entity.setDetails(dto.getDetails());
        return entity;
    }
}