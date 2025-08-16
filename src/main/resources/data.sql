-- Insert initial data only if table exists and is empty
DO $$
BEGIN
    IF EXISTS (SELECT FROM information_schema.tables WHERE table_schema = 'portfolio' AND table_name = 'projects') THEN
        INSERT INTO portfolio.projects (id, title, description, git_url, live_url, details) 
        SELECT 'project-1', '첫 번째 프로젝트', '이것은 저의 첫 번째 포트폴리오 프로젝트입니다. 최신 기술 스택을 사용하여 만들었습니다.', 'https://github.com/your-username/project-1', 'https://project-1.your-domain.com', '## 프로젝트 개요

이 프로젝트는 Spring Boot와 현대적인 웹 기술을 활용한 포트폴리오 시스템입니다.'
        WHERE NOT EXISTS (SELECT 1 FROM portfolio.projects WHERE id = 'project-1');

        INSERT INTO portfolio.projects (id, title, description, git_url, live_url, details) 
        SELECT 'project-2', '두 번째 프로젝트', '사용자 인증 및 실시간 채팅 기능을 구현한 웹 애플리케이션입니다.', 'https://github.com/your-username/project-2', NULL, '## 주요 기능

- 실시간 채팅
- JWT 기반 인증
- 사용자 관리 시스템'
        WHERE NOT EXISTS (SELECT 1 FROM portfolio.projects WHERE id = 'project-2');
    END IF;
END
$$;