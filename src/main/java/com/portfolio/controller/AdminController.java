package com.portfolio.controller;

import com.portfolio.dto.Project;
import com.portfolio.service.ProjectService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/admin")
public class AdminController {

    private final ProjectService projectService;

    public AdminController(ProjectService projectService) {
        this.projectService = projectService;
    }

    @GetMapping
    public String adminPanel(Model model) {
        model.addAttribute("projects", projectService.getProjects());
        model.addAttribute("newProject", new Project()); // For the add/edit form
        return "admin";
    }

    @PostMapping("/save")
    public String saveProject(@ModelAttribute Project project, @RequestParam("stackString") String stackString) {
        if (stackString != null && !stackString.trim().isEmpty()) {
            project.setStack(java.util.Arrays.asList(stackString.split(",")).stream().map(String::trim).collect(java.util.stream.Collectors.toList()));
        } else {
            project.setStack(java.util.Collections.emptyList());
        }
        projectService.saveProject(project);
        return "redirect:/admin";
    }

    @GetMapping("/edit/{id}")
    public String editProject(@PathVariable String id, Model model) {
        projectService.getProjectById(id).ifPresent(project -> model.addAttribute("newProject", project));
        model.addAttribute("projects", projectService.getProjects()); // To display list on same page
        return "admin";
    }

    @GetMapping("/delete/{id}")
    public String deleteProject(@PathVariable String id) {
        projectService.deleteProject(id);
        return "redirect:/admin";
    }
}
