package com.portfolio.controller;

import com.portfolio.service.ProjectService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class ProjectController {

    private final ProjectService projectService;

    public ProjectController(ProjectService projectService) {
        this.projectService = projectService;
    }

    @GetMapping("/")
    public String index(Model model) {
        model.addAttribute("projects", projectService.getProjects());
        return "index";
    }

    @GetMapping("/projects/{id}")
    public String projectDetails(@PathVariable String id, Model model) {
        try {
            return projectService.getProjectById(id)
                    .map(project -> {
                        model.addAttribute("project", project);
                        return "project-details";
                    })
                    .orElse("redirect:/"); // Not found, redirect to home
        } catch (Exception e) {
            // Log the error for debugging
            System.err.println("Error loading project with ID: " + id + " - " + e.getMessage());
            e.printStackTrace();
            return "redirect:/"; // Redirect to home on error
        }
    }

    @GetMapping("/login")
    public String login() {
        return "login";
    }
}
