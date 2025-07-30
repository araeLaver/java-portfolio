package com.portfolio.service;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.portfolio.dto.Project;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Service;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Collections;
import java.util.List;
import java.util.Optional;

import org.commonmark.node.Node;
import org.commonmark.parser.Parser;
import org.commonmark.renderer.html.HtmlRenderer;

@Service
public class ProjectService {

    private final ClassPathResource projectResource;
    private final File externalProjectFile;
    private final Parser parser;
    private final HtmlRenderer renderer;

    public ProjectService() {
        this.projectResource = new ClassPathResource("projects.json");
        // 외부 파일 경로 설정 (사용자 홈 디렉토리)
        String userHome = System.getProperty("user.home");
        this.externalProjectFile = new File(userHome + "/portfolio-projects.json");
        this.parser = Parser.builder().build();
        this.renderer = HtmlRenderer.builder().build();
        
        // 외부 파일이 없으면 초기 데이터로 생성
        initializeExternalFile();
    }
    
    private void initializeExternalFile() {
        if (!externalProjectFile.exists()) {
            try {
                // 클래스패스에서 초기 데이터 읽기
                List<Project> initialProjects = getProjectsFromClasspath();
                saveProjectsToExternalFile(initialProjects);
            } catch (Exception e) {
                System.err.println("Failed to initialize external project file: " + e.getMessage());
            }
        }
    }

    public List<Project> getProjects() {
        // 외부 파일이 있으면 외부 파일에서 읽기
        if (externalProjectFile.exists()) {
            try {
                ObjectMapper mapper = new ObjectMapper();
                return mapper.readValue(externalProjectFile, new TypeReference<List<Project>>() {});
            } catch (IOException e) {
                System.err.println("Failed to read from external file, falling back to classpath: " + e.getMessage());
            }
        }
        
        // 외부 파일이 없거나 실패하면 클래스패스에서 읽기
        return getProjectsFromClasspath();
    }
    
    private List<Project> getProjectsFromClasspath() {
        try (InputStream inputStream = projectResource.getInputStream()) {
            ObjectMapper mapper = new ObjectMapper();
            return mapper.readValue(inputStream, new TypeReference<List<Project>>() {});
        } catch (IOException e) {
            return Collections.emptyList();
        }
    }
    
    private void saveProjectsToExternalFile(List<Project> projects) {
        try {
            ObjectMapper mapper = new ObjectMapper();
            mapper.writerWithDefaultPrettyPrinter().writeValue(externalProjectFile, projects);
        } catch (IOException e) {
            System.err.println("Failed to save projects to external file: " + e.getMessage());
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
        
        // 동일한 ID의 프로젝트가 있으면 업데이트, 없으면 추가
        Optional<Project> existingProject = projects.stream()
                .filter(p -> p.getId().equals(newProject.getId()))
                .findFirst();

        if (existingProject.isPresent()) {
            int index = projects.indexOf(existingProject.get());
            projects.set(index, newProject);
            System.out.println("Updated project: " + newProject.getTitle());
        } else {
            projects.add(newProject);
            System.out.println("Added new project: " + newProject.getTitle());
        }

        // 외부 파일에 저장
        saveProjectsToExternalFile(projects);
    }

    public void deleteProject(String id) {
        List<Project> projects = getProjects();
        boolean removed = projects.removeIf(project -> project.getId().equals(id));
        
        if (removed) {
            saveProjectsToExternalFile(projects);
            System.out.println("Deleted project with ID: " + id);
        } else {
            System.out.println("Project not found with ID: " + id);
        }
    }
}