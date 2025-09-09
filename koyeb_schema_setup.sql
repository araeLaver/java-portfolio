-- Create dedicated schema for java-portfolio service
CREATE SCHEMA IF NOT EXISTS java_portfolio;

-- Set search path to use the new schema
SET search_path TO java_portfolio, public;

-- Create projects table in the new schema
CREATE TABLE IF NOT EXISTS java_portfolio.projects (
    id VARCHAR(255) PRIMARY KEY,
    title VARCHAR(500) NOT NULL,
    description TEXT,
    git_url VARCHAR(1000),
    live_url VARCHAR(1000),
    details TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create trigger for updated_at
CREATE OR REPLACE FUNCTION java_portfolio.update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = CURRENT_TIMESTAMP;
    RETURN NEW;
END;
$$ language 'plpgsql';

CREATE TRIGGER update_projects_updated_at 
    BEFORE UPDATE ON java_portfolio.projects 
    FOR EACH ROW EXECUTE FUNCTION java_portfolio.update_updated_at_column();

-- Insert initial sample data
INSERT INTO java_portfolio.projects (id, title, description, git_url, live_url, details) 
VALUES (
    'project-1', 
    '첫 번째 프로젝트', 
    '이것은 저의 첫 번째 포트폴리오 프로젝트입니다. 최신 기술 스택을 사용하여 만들었습니다.', 
    'https://github.com/your-username/project-1', 
    'https://project-1.your-domain.com', 
    '## 프로젝트 개요

이 프로젝트는 Spring Boot와 현대적인 웹 기술을 활용한 포트폴리오 시스템입니다.'
) ON CONFLICT (id) DO NOTHING;

INSERT INTO java_portfolio.projects (id, title, description, git_url, live_url, details) 
VALUES (
    'project-2', 
    '두 번째 프로젝트', 
    '사용자 인증 및 실시간 채팅 기능을 구현한 웹 애플리케이션입니다.', 
    'https://github.com/your-username/project-2', 
    NULL, 
    '## 주요 기능

- 실시간 채팅
- JWT 기반 인증
- 사용자 관리 시스템'
) ON CONFLICT (id) DO NOTHING;

-- Grant necessary permissions (if needed)
-- GRANT ALL PRIVILEGES ON SCHEMA java_portfolio TO unble;
-- GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA java_portfolio TO unble;