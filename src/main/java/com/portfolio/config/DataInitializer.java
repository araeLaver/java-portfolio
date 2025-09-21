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
        // 빠른 시작을 위해 간단한 프로젝트 2개만 추가
        if (projectRepository.count() == 0) {
            System.out.println("Initializing database with essential projects...");

            ProjectEntity themeGallery = new ProjectEntity();
            themeGallery.setId("theme-gallery");
            themeGallery.setTitle("Theme Gallery - 테마 기반 이미지 갤러리");
            themeGallery.setDescription("64개 테마와 768개의 고품질 이미지를 제공하는 React 기반 이미지 갤러리입니다.");
            themeGallery.setGitUrl("https://github.com/araeLaver/theme-gallery");
            themeGallery.setLiveUrl("https://theme-gallery-production.vercel.app/");
            themeGallery.setStack(Arrays.asList("React 18.2.0", "TypeScript 4.9.5", "Tailwind CSS 3.3.0", "PWA", "Vercel"));
            themeGallery.setDetails("# Theme Gallery\n\n64개의 테마와 768개의 엄선된 고품질 이미지를 제공하는 현대적인 이미지 갤러리 웹 애플리케이션입니다.");

            ProjectEntity secureChat = new ProjectEntity();
            secureChat.setId("simple-chat-server");
            secureChat.setTitle("SecureChat - 실시간 보안 채팅 애플리케이션");
            secureChat.setDescription("다중 채팅룸, AES-256 암호화, 자동 메시지 삭제 기능을 지원하는 Java Spring Boot 기반의 실시간 보안 채팅 애플리케이션입니다.");
            secureChat.setGitUrl("https://github.com/araeLaver/simple-chat-server");
            secureChat.setLiveUrl("https://securechat-production.koyeb.app/");
            secureChat.setStack(Arrays.asList("Java 17", "Spring Boot 3.2", "WebSocket", "PostgreSQL", "Docker", "Koyeb"));
            secureChat.setDetails("# SecureChat - 실시간 보안 채팅\n\n고급 보안 기능과 뛰어난 사용자 경험을 제공하는 실시간 채팅 애플리케이션입니다.");

            ProjectEntity reactun = new ProjectEntity();
            reactun.setId("reactun");
            reactun.setTitle("Reactun - 로또 번호 생성 및 분석 시스템");
            reactun.setDescription("고급 랜덤 알고리즘과 실시간 데이터 스크래핑을 활용한 로또 번호 생성 및 통계 분석 시스템입니다.");
            reactun.setGitUrl("https://github.com/araeLaver/reactun");
            reactun.setLiveUrl("https://reactun.vercel.app/");
            reactun.setStack(Arrays.asList("React 18", "Chart.js", "Node.js", "Express", "MySQL 8.0", "Vercel"));
            reactun.setDetails("# Reactun - 로또 번호 생성 & 분석\n\n고급 알고리즘과 실시간 데이터 분석을 결합한 종합적인 로또 시스템입니다.");

            ProjectEntity portfolio = new ProjectEntity();
            portfolio.setId("java-portfolio-web");
            portfolio.setTitle("Java Portfolio - 개인 포트폴리오 웹사이트");
            portfolio.setDescription("이 포트폴리오 사이트 자체입니다! Spring Boot, Thymeleaf, PostgreSQL을 활용한 프로젝트 관리 시스템입니다.");
            portfolio.setGitUrl("https://github.com/araeLaver/java-portfolio");
            portfolio.setLiveUrl("https://doubtful-andrei-untab-93fef20e.koyeb.app/");
            portfolio.setStack(Arrays.asList("Java 17", "Spring Boot 3.3.2", "Spring Security", "Thymeleaf", "PostgreSQL", "Koyeb"));
            portfolio.setDetails("# Java Portfolio Web Application\n\n바로 지금 보고 계신 이 포트폴리오 웹사이트입니다!");

            projectRepository.save(themeGallery);
            projectRepository.save(secureChat);
            projectRepository.save(reactun);
            projectRepository.save(portfolio);

            System.out.println("Database initialized with " + projectRepository.count() + " projects.");
        } else {
            System.out.println("Database already contains " + projectRepository.count() + " projects.");
        }
    }
}