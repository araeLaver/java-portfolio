-- Insert initial data only if table exists and is empty
INSERT INTO java_portfolio.projects (id, title, description, git_url, live_url, details) 
SELECT 'project-1', '첫 번째 프로젝트', '이것은 저의 첫 번째 포트폴리오 프로젝트입니다. 최신 기술 스택을 사용하여 만들었습니다.', 'https://github.com/your-username/project-1', 'https://project-1.your-domain.com', '## 프로젝트 개요

이 프로젝트는 Spring Boot와 현대적인 웹 기술을 활용한 포트폴리오 시스템입니다.'
WHERE NOT EXISTS (SELECT 1 FROM java_portfolio.projects WHERE id = 'project-1');

INSERT INTO java_portfolio.projects (id, title, description, git_url, live_url, details) 
SELECT 'project-2', '두 번째 프로젝트', '사용자 인증 및 실시간 채팅 기능을 구현한 웹 애플리케이션입니다.', 'https://github.com/your-username/project-2', NULL, '## 주요 기능

- 실시간 채팅
- JWT 기반 인증
- 사용자 관리 시스템'
WHERE NOT EXISTS (SELECT 1 FROM java_portfolio.projects WHERE id = 'project-2');

INSERT INTO java_portfolio.projects (id, title, description, git_url, live_url, details) 
SELECT 'daily-messages-app', '데일리 메시지 앱', '매일 새로운 메시지를 받아볼 수 있는 웹 애플리케이션입니다. 사용자들이 개인적인 일일 메시지를 작성하고 관리할 수 있습니다.', 'https://github.com/your-username/daily-messages-app', 'https://java-portfolio-production.up.railway.app/', '## 프로젝트 특징

- **일일 메시지 관리**: 매일 새로운 메시지를 작성하고 확인
- **Spring Boot**: 백엔드 프레임워크로 RESTful API 구현
- **PostgreSQL**: 안정적인 데이터 저장소
- **Thymeleaf**: 동적 웹 페이지 렌더링
- **Railway 배포**: 클라우드 플랫폼을 통한 자동 배포

## 주요 기능
- 메시지 작성 및 편집
- 날짜별 메시지 조회
- 반응형 웹 디자인
- 관리자 패널'
WHERE NOT EXISTS (SELECT 1 FROM java_portfolio.projects WHERE id = 'daily-messages-app');