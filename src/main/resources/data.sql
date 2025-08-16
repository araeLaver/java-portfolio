-- Create schema if it doesn't exist
CREATE SCHEMA IF NOT EXISTS portfolio;

-- Insert initial data
INSERT INTO portfolio.projects (id, title, description, git_url, live_url, details) 
VALUES 
    ('project-1', '첫 번째 프로젝트', '이것은 저의 첫 번째 포트폴리오 프로젝트입니다. 최신 기술 스택을 사용하여 만들었습니다.', 'https://github.com/your-username/project-1', 'https://project-1.your-domain.com', '## 프로젝트 개요

이 프로젝트는...')
ON CONFLICT (id) DO NOTHING;

INSERT INTO portfolio.projects (id, title, description, git_url, live_url, details) 
VALUES 
    ('project-2', '두 번째 프로젝트', '사용자 인증 및 실시간 채팅 기능을 구현한 웹 애플리케이션입니다.', 'https://github.com/your-username/project-2', NULL, '## 주요 기능

- 실시간 채팅
- JWT 기반 인증')
ON CONFLICT (id) DO NOTHING;

-- Insert stack data
INSERT INTO portfolio.project_stack (project_id, technology) 
VALUES 
    ('project-1', 'Java'),
    ('project-1', 'Spring Boot'),
    ('project-1', 'Thymeleaf'),
    ('project-2', 'Java'),
    ('project-2', 'Spring WebSocket'),
    ('project-2', 'React')
ON CONFLICT DO NOTHING;