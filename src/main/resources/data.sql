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

INSERT INTO java_portfolio.projects (id, title, description, git_url, live_url, details) 
SELECT 'theme-gallery', 'Theme Gallery - 테마 기반 이미지 갤러리', '64개 테마와 768개의 고품질 이미지를 제공하는 React 기반 이미지 갤러리입니다. PWA를 지원하며 다운로드, 검색, 필터링 등 다양한 기능을 제공합니다.', 'https://github.com/araeLaver/theme-gallery', 'https://theme-gallery-production.vercel.app/', '# Theme Gallery

64개의 테마와 768개의 엄선된 고품질 이미지를 제공하는 현대적인 이미지 갤러리 웹 애플리케이션입니다.

## 🎨 주요 기능

### 테마 기반 이미지 브라우징
- **64개 테마 카테고리**: 자연, 건축, 음식, 동물, 기술 등 다양한 테마
- **테마별 12개 이미지**: 각 테마마다 신중하게 선택된 고품질 이미지

### 고급 검색 시스템
- **실시간 검색**: 입력과 동시에 결과 표시
- **스마트 필터링**: 이미지 태그와 alt 텍스트를 통한 지능형 검색
- **카테고리별 필터**: 원하는 테마로 빠른 필터링

### 다운로드 기능
- **단일/대량 다운로드**: 개별 이미지 또는 전체 테마 다운로드
- **CORS 우회 로직**: 외부 이미지 다운로드 최적화
- **자동 파일명 생성**: 의미 있는 파일명 자동 생성

### PWA 지원
- **오프라인 기능**: 인터넷 연결 없이도 이용 가능
- **모바일 앱 설치**: 홈 화면에 앱으로 설치 가능
- **푸시 알림**: 새 이미지 업데이트 알림

## 🛠️ 기술 스택

### Frontend
- **React 18.2.0**: 최신 React 기능 활용
- **TypeScript 4.9.5**: 타입 안전성 보장
- **Tailwind CSS 3.3.0**: 유틸리티 우선 CSS 프레임워크

### 사용자 경험
- **Framer Motion 10.16.4**: 부드러운 애니메이션과 전환 효과
- **Lazy Loading**: 이미지 지연 로딩으로 성능 최적화
- **Infinite Scroll**: 무한 스크롤로 seamless한 브라우징
- **Responsive Design**: 모든 기기에서 완벽한 화면 대응

## 📱 성능 최적화

- **이미지 최적화**: WebP 포맷 지원 및 압축
- **SEO 최적화**: 검색 엔진 친화적 구조
- **Progressive Loading**: 점진적 콘텐츠 로딩
- **캐싱 전략**: 효율적인 리소스 관리

## 🚀 배포 & 인프라

- **Vercel 배포**: 글로벌 CDN을 통한 빠른 로딩
- **자동 배포**: Git push 시 자동 빌드 및 배포
- **성능 모니터링**: 실시간 성능 지표 추적'
WHERE NOT EXISTS (SELECT 1 FROM java_portfolio.projects WHERE id = 'theme-gallery');