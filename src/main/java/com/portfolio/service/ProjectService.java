package com.portfolio.service;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.portfolio.dto.Project;
import org.springframework.stereotype.Service;
import org.springframework.util.ResourceUtils;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.util.Collections;
import java.util.List;
import java.util.Optional;

import org.commonmark.node.Node;
import org.commonmark.parser.Parser;
import org.commonmark.renderer.html.HtmlRenderer;

@Service
public class ProjectService {

    private final File projectFile;
    private final Parser parser;
    private final HtmlRenderer renderer;

    public ProjectService() {
        try {
            // This path points to the file inside the JAR when packaged
            this.projectFile = ResourceUtils.getFile("classpath:projects.json");
            this.parser = Parser.builder().build();
            this.renderer = HtmlRenderer.builder().build();
        } catch (Exception e) {
            throw new RuntimeException("Could not init project.json file", e);
        }
    }

    public List<Project> getProjects() {
        try (InputStream inputStream = Files.newInputStream(projectFile.toPath())) {
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
        List<Project> projects = getProjects();
        // Check if project with same ID already exists, if so, update it
        Optional<Project> existingProject = projects.stream()
                .filter(p -> p.getId().equals(newProject.getId()))
                .findFirst();

        if (existingProject.isPresent()) {
            // Update existing project
            int index = projects.indexOf(existingProject.get());
            projects.set(index, newProject);
        } else {
            // Add new project
            projects.add(newProject);
        }

        // This part will cause error when running from JAR because it tries to write inside JAR
        try (java.io.FileWriter fileWriter = new java.io.FileWriter(projectFile)) {
            ObjectMapper mapper = new ObjectMapper();
            mapper.writerWithDefaultPrettyPrinter().writeValue(fileWriter, projects);
        } catch (IOException e) {
            throw new RuntimeException("Failed to save project to file", e);
        }
    }

    public void deleteProject(String id) {
        List<Project> projects = getProjects();
        projects.removeIf(project -> project.getId().equals(id));

        // This part will cause error when running from JAR because it tries to write inside JAR
        try (java.io.FileWriter fileWriter = new java.io.FileWriter(projectFile)) {
            ObjectMapper mapper = new ObjectMapper();
            mapper.writerWithDefaultPrettyPrinter().writeValue(fileWriter, projects);
        } catch (IOException e) {
            throw new RuntimeException("Failed to delete project from file", e);
        }
    }
}