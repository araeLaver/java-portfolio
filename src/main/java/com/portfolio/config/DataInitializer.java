package com.portfolio.config;

import com.portfolio.entity.ProjectEntity;
import com.portfolio.repository.ProjectRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

import java.util.Arrays;

@Component
public class DataInitializer implements CommandLineRunner {

    @Autowired
    private ProjectRepository projectRepository;

    @Override
    public void run(String... args) throws Exception {
        // 데이터베이스가 비어있으면 초기 데이터 추가
        if (projectRepository.count() == 0) {
            System.out.println("Initializing database with sample projects...");
            
            ProjectEntity project1 = new ProjectEntity();
            project1.setId("project-1");
            project1.setTitle("첫 번째 프로젝트");
            project1.setDescription("이것은 저의 첫 번째 포트폴리오 프로젝트입니다. 최신 기술 스택을 사용하여 만들었습니다.");
            project1.setGitUrl("https://github.com/your-username/project-1");
            project1.setLiveUrl("https://project-1.your-domain.com");
            project1.setStack(Arrays.asList("Java", "Spring Boot", "Thymeleaf"));
            project1.setDetails("## 프로젝트 개요\n\n이 프로젝트는 Spring Boot와 현대적인 웹 기술을 활용한 포트폴리오 시스템입니다.");
            
            ProjectEntity project2 = new ProjectEntity();
            project2.setId("project-2");
            project2.setTitle("두 번째 프로젝트");
            project2.setDescription("사용자 인증 및 실시간 채팅 기능을 구현한 웹 애플리케이션입니다.");
            project2.setGitUrl("https://github.com/your-username/project-2");
            project2.setLiveUrl(null);
            project2.setStack(Arrays.asList("Java", "Spring WebSocket", "React"));
            project2.setDetails("## 주요 기능\n\n- 실시간 채팅\n- JWT 기반 인증\n- 사용자 관리 시스템");
            
            projectRepository.save(project1);
            projectRepository.save(project2);
            
            System.out.println("Database initialized with " + projectRepository.count() + " projects.");
        } else {
            System.out.println("Database already contains " + projectRepository.count() + " projects.");
        }
    }
}