-- 포트폴리오 데이터베이스 설정 스크립트
-- Supabase SQL Editor에서 실행하세요

-- 1. 스키마 생성
CREATE SCHEMA IF NOT EXISTS portfolio;

-- 2. 프로젝트 테이블 생성
CREATE TABLE IF NOT EXISTS portfolio.projects (
    id VARCHAR(255) PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    git_url VARCHAR(500),
    live_url VARCHAR(500),
    details TEXT
);

-- 3. 기술 스택 테이블 생성
CREATE TABLE IF NOT EXISTS portfolio.project_stack (
    id SERIAL PRIMARY KEY,
    project_id VARCHAR(255) NOT NULL,
    technology VARCHAR(100) NOT NULL,
    FOREIGN KEY (project_id) REFERENCES portfolio.projects(id) ON DELETE CASCADE
);

-- 4. 기존 데이터 삭제 (있다면)
DELETE FROM portfolio.project_stack;
DELETE FROM portfolio.projects;

-- 5. 초기 프로젝트 데이터 삽입
INSERT INTO portfolio.projects (id, title, description, git_url, live_url, details) 
VALUES 
    ('project-1', '첫 번째 프로젝트', '이것은 저의 첫 번째 포트폴리오 프로젝트입니다. 최신 기술 스택을 사용하여 만들었습니다.', 'https://github.com/your-username/project-1', 'https://project-1.your-domain.com', '## 프로젝트 개요

이 프로젝트는 Spring Boot와 현대적인 웹 기술을 활용한 포트폴리오 시스템입니다.'),
    ('project-2', '두 번째 프로젝트', '사용자 인증 및 실시간 채팅 기능을 구현한 웹 애플리케이션입니다.', 'https://github.com/your-username/project-2', NULL, '## 주요 기능

- 실시간 채팅
- JWT 기반 인증
- 사용자 관리 시스템');

-- 6. 기술 스택 데이터 삽입
INSERT INTO portfolio.project_stack (project_id, technology) 
VALUES 
    ('project-1', 'Java'),
    ('project-1', 'Spring Boot'),
    ('project-1', 'Thymeleaf'),
    ('project-2', 'Java'),
    ('project-2', 'Spring WebSocket'),
    ('project-2', 'React');

-- 7. 데이터 확인
SELECT 'Projects created:' as info;
SELECT id, title FROM portfolio.projects;

SELECT 'Technology stacks:' as info;
SELECT p.title, ps.technology 
FROM portfolio.projects p 
JOIN portfolio.project_stack ps ON p.id = ps.project_id 
ORDER BY p.id, ps.technology;

SELECT 'Setup completed successfully!' as result;