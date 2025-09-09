package com.portfolio.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class GlobalExceptionHandler {

    @ExceptionHandler(Exception.class)
    public String handleGeneralException(Exception e, Model model) {
        // Log the error
        System.err.println("Unexpected error occurred: " + e.getMessage());
        e.printStackTrace();
        
        // Redirect to home page on any unhandled exception
        return "redirect:/";
    }
}