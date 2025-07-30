package com.portfolio.service;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.portfolio.dto.Project;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.io.InputStream;
import java.util.Collections;
import java.util.List;
import java.util.Optional;

import org.commonmark.node.Node;
import org.commonmark.parser.Parser;
import org.commonmark.renderer.html.HtmlRenderer;

@Service
public class ProjectService {

    private final ClassPathResource projectResource;
    private final Parser parser;
    private final HtmlRenderer renderer;

    public ProjectService() {
        this.projectResource = new ClassPathResource("projects.json");
        this.parser = Parser.builder().build();
        this.renderer = HtmlRenderer.builder().build();
    }

    public List<Project> getProjects() {
        try (InputStream inputStream = projectResource.getInputStream()) {
            ObjectMapper mapper = new ObjectMapper();
            return mapper.readValue(inputStream, new TypeReference<List<Project>>() {});
        } catch (IOException e) {
            // In case the file is empty or not found, return an empty list
            return Collections.emptyList();
        }
    }

    public Optional<Project> getProjectById(String id) {
        return getProjects().stream()
                .filter(project -> project.getId().equals(id))
                .map(project -> {
                    if (project.getDetails() != null) {
                        Node document = parser.parse(project.getDetails());
                        project.setDetails(renderer.render(document)); // Convert markdown to HTML
                    }
                    return project;
                })
                .findFirst();
    }

    public void saveProject(Project newProject) {
        // Note: In JAR environment, we cannot write to classpath resources
        // This method would need to be modified to use an external database or file system
        // For now, we'll just log a warning
        System.out.println("Warning: saveProject called but file writing not supported in JAR environment");
        System.out.println("Project to save: " + newProject.getTitle());
    }

    public void deleteProject(String id) {
        // Note: In JAR environment, we cannot write to classpath resources
        // This method would need to be modified to use an external database or file system
        // For now, we'll just log a warning
        System.out.println("Warning: deleteProject called but file writing not supported in JAR environment");
        System.out.println("Project to delete: " + id);
    }
}