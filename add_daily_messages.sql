-- Daily Messages App을 포트폴리오에 추가하는 SQL 스크립트
-- Supabase SQL Editor에서 실행하세요

-- 1. Daily Messages App 프로젝트 추가
INSERT INTO portfolio.projects (id, title, description, git_url, live_url, details) 
VALUES (
    'daily-messages-app',
    'Daily Messages - 일일 명언 앱',
    '매일 새로운 영감을 주는 명언을 제공하는 현대적인 웹 애플리케이션입니다. React와 FastAPI를 활용한 풀스택 프로젝트로, 15개 카테고리의 190여 개 명언을 수록하고 있습니다.',
    'https://github.com/araeLaver/daily-messages-app',
    'https://daily-messages-app.netlify.app',
    '## 프로젝트 개요

Daily Messages는 사용자에게 매일 새로운 영감을 제공하는 웹 애플리케이션입니다. 현대적인 UI/UX 디자인과 함께 다양한 카테고리의 명언을 통해 긍정적인 하루를 시작할 수 있도록 도와줍니다.

## 주요 기능

### 🌅 일일 고정 명언
- 날짜 기반 시드를 사용하여 매일 동일한 명언 제공
- 사용자가 언제 접속해도 그날의 고정된 명언을 볼 수 있음

### 🎲 카테고리별 랜덤 명언
- 15개의 다양한 카테고리 (동기부여, 성공, 행복, 사랑 등)
- 190여 개의 엄선된 명언 데이터베이스
- 지능적인 중복 방지 시스템

### ⭐ 즐겨찾기 기능
- 마음에 드는 명언을 즐겨찾기에 저장
- 로컬 스토리지를 활용한 개인화된 경험

### 🎨 모던 UI/UX
- Glassmorphism 디자인 적용
- Tailwind CSS를 활용한 반응형 디자인
- 모바일, 태블릿, 데스크톱 완벽 지원

## 기술 스택

### Frontend
- **React 18**: 최신 React 기능 활용
- **Tailwind CSS**: 유틸리티 기반 스타일링
- **Netlify**: 정적 사이트 호스팅

### Backend  
- **FastAPI**: 고성능 Python 웹 프레임워크
- **PostgreSQL**: 명언 데이터 저장
- **Koyeb**: 백엔드 서버 호스팅

## 기술적 특징

### 성능 최적화
- React 18의 최신 기능 활용
- 효율적인 상태 관리
- 빠른 로딩 속도

### 사용자 경험
- 직관적인 인터페이스
- 부드러운 애니메이션 효과
- 접근성 지원 (웹 표준 준수)

### 데이터 관리
- PostgreSQL을 활용한 체계적인 데이터 관리
- RESTful API 설계
- 효율적인 쿼리 최적화

## 프로젝트 하이라이트

이 프로젝트는 단순한 명언 앱을 넘어서, 현대적인 웹 기술을 활용한 종합적인 사용자 경험을 제공합니다. 특히 날짜 기반 시드를 활용한 일일 고정 명언 시스템과 카테고리별 지능적인 중복 방지 기능이 핵심 차별화 요소입니다.

**라이브 데모**: [https://daily-messages-app.netlify.app](https://daily-messages-app.netlify.app)'
)
ON CONFLICT (id) DO UPDATE SET
    title = EXCLUDED.title,
    description = EXCLUDED.description,
    git_url = EXCLUDED.git_url,
    live_url = EXCLUDED.live_url,
    details = EXCLUDED.details;

-- 2. 기존 기술 스택 데이터 삭제 (있다면)
DELETE FROM portfolio.project_stack WHERE project_id = 'daily-messages-app';

-- 3. Daily Messages App 기술 스택 추가
INSERT INTO portfolio.project_stack (project_id, technology) 
VALUES 
    ('daily-messages-app', 'React 18'),
    ('daily-messages-app', 'Tailwind CSS'),
    ('daily-messages-app', 'FastAPI'),
    ('daily-messages-app', 'PostgreSQL'),
    ('daily-messages-app', 'Python'),
    ('daily-messages-app', 'JavaScript'),
    ('daily-messages-app', 'Netlify'),
    ('daily-messages-app', 'Koyeb');

-- 4. 추가 확인
SELECT 'Daily Messages App이 성공적으로 추가되었습니다!' as result;

SELECT 'Portfolio에 있는 모든 프로젝트:' as info;
SELECT id, title FROM portfolio.projects ORDER BY id;

SELECT 'Daily Messages App 기술 스택:' as info;
SELECT technology FROM portfolio.project_stack WHERE project_id = 'daily-messages-app' ORDER BY technology;