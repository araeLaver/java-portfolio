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

-- Simple Chat Server Project
INSERT INTO java_portfolio.projects (id, title, description, git_url, live_url, details) 
SELECT 'simple-chat-server', 'SecureChat - 실시간 보안 채팅 애플리케이션', '다중 채팅룸, AES-256 암호화, 자동 메시지 삭제 기능을 지원하는 Java Spring Boot 기반의 실시간 보안 채팅 애플리케이션입니다.', 'https://github.com/araeLaver/simple-chat-server', 'https://securechat-production.koyeb.app/', '# SecureChat - 실시간 보안 채팅

고급 보안 기능과 뛰어난 사용자 경험을 제공하는 실시간 채팅 애플리케이션입니다.

## 🔐 보안 특징

### 다중 채팅룸 지원
- **표준 채팅룸**: 일반적인 실시간 채팅
- **비밀 채팅룸**: 비밀번호 보호 및 AES-256 암호화
- **임시 채팅룸**: 시간 기반 자동 메시지 삭제

### 고급 보안 기능
- **WebSocket Secure (WSS)**: 안전한 데이터 전송
- **AES-256 암호화**: 비밀 채팅룸 메시지 암호화
- **자동 메시지 삭제**: 시간 기반 메시지 정리
- **SSL 데이터베이스 연결**: 안전한 데이터 저장

## 🛠️ 기술 스택

### 백엔드
- **Java 17 + Spring Boot 3.2**: 최신 Java 기능 활용
- **WebSocket**: 실시간 통신
- **Spring Data JPA**: 데이터 액세스 레이어
- **PostgreSQL**: 운영 환경 데이터베이스

### 프론트엔드
- **Vanilla JavaScript**: 경량화된 프론트엔드
- **Modern CSS**: 반응형 디자인
- **Service Worker**: PWA 기능
- **WebSocket API**: 실시간 통신

## 🚀 배포 & 성능

### 인프라
- **Docker 컨테이너화**: 일관된 배포 환경
- **Koyeb 클라우드**: 안정적인 호스팅
- **GitHub Actions**: CI/CD 파이프라인

### 성능 최적화
- **커넥션 풀 최적화**: 효율적인 데이터베이스 연결
- **JPA 배치 처리**: 대량 데이터 처리 최적화
- **최소 번들 크기**: 빠른 로딩 속도
- **Service Worker 캐싱**: 오프라인 지원'
WHERE NOT EXISTS (SELECT 1 FROM java_portfolio.projects WHERE id = 'simple-chat-server');

-- Reactun Lottery Project
INSERT INTO java_portfolio.projects (id, title, description, git_url, live_url, details) 
SELECT 'reactun', 'Reactun - 로또 번호 생성 및 분석 시스템', '고급 랜덤 알고리즘과 실시간 데이터 스크래핑을 활용한 로또 번호 생성 및 통계 분석 시스템입니다. React와 Node.js 풀스택 애플리케이션입니다.', 'https://github.com/araeLaver/reactun', 'https://reactun.vercel.app/', '# Reactun - 로또 번호 생성 & 분석

고급 알고리즘과 실시간 데이터 분석을 결합한 종합적인 로또 시스템입니다.

## 🎲 핵심 기능

### 로또 번호 생성
- **고급 랜덤 알고리즘**: 통계적으로 검증된 번호 생성
- **커스텀 번호 포함**: 원하는 번호를 포함하여 생성
- **대량 생성**: 최대 10,000개 번호 동시 생성
- **중복 제거**: 1-45 범위의 고유한 6개 번호

### 실시간 데이터 수집
- **자동 데이터 스크래핑**: 주간 자동 로또 데이터 수집
- **공식 사이트 연동**: 정확한 당첨 번호 정보
- **상세 정보 캡처**: 회차, 당첨번호, 보너스번호, 상금 정보

### 통계 분석 & 시각화
- **Chart.js 활용**: 직관적인 데이터 시각화
- **당첨 확률 계산**: 실시간 통계적 인사이트
- **데이터 내보내기**: XLSX 형태로 결과 저장

## 🛠️ 기술 스택

### 프론트엔드
- **React 18**: 최신 React 기능
- **Chart.js**: 데이터 시각화
- **Axios**: API 통신

### 백엔드
- **Node.js + Express**: 서버 사이드
- **MySQL 8.0**: 데이터베이스

### 배포 환경
- **Vercel**: 프론트엔드 배포
- **Koyeb**: 프록시 서버

## ⚡ 성능 특징

- **대용량 처리**: 10,000+ 번호 생성 및 분석
- **빠른 응답**: 평균 200ms 이하 응답 시간
- **모바일 최적화**: 모바일 퍼스트 반응형 디자인
- **코드 최적화**: React.memo() 및 코드 스플리팅 적용'
WHERE NOT EXISTS (SELECT 1 FROM java_portfolio.projects WHERE id = 'reactun');

-- Idea Manager Project
INSERT INTO java_portfolio.projects (id, title, description, git_url, live_url, details) 
SELECT 'idea-manager', 'Idea Manager - 아이디어 체계적 관리 도구', '창업가와 개발자를 위한 비즈니스 아이디어 체계적 관리 웹 애플리케이션입니다. React 18, TypeScript, Vite로 구축된 현대적인 아이디어 트래킹 시스템입니다.', 'https://github.com/araeLaver/idea-manager', 'https://idea-manager-production.vercel.app/', '# Idea Manager - 체계적 아이디어 관리

창업가, 개발자, 창의적 전문가를 위한 구조화된 아이디어 캡처 및 개발 도구입니다.

## 💡 핵심 기능

### 완전한 CRUD 기능
- **아이디어 생성**: 상세한 메타데이터와 함께 아이디어 등록
- **상태 추적**: 초안, 진행중, 완료, 보관 상태 관리
- **우선순위 설정**: 중요도별 아이디어 분류
- **카테고리 분류**: 체계적인 아이디어 조직

### 고급 검색 & 필터
- **통합 검색**: 제목, 내용, 태그 전체 검색
- **다중 필터**: 상태, 우선순위, 카테고리별 필터링
- **실시간 검색**: 입력과 동시에 결과 표시

### 유연한 뷰 모드
- **카드 뷰**: 시각적이고 직관적인 아이디어 카드
- **테이블 뷰**: 상세 정보 일목요연 표시
- **반응형 디자인**: 데스크톱, 태블릿, 모바일 최적화

## 🛠️ 기술 스택

### 개발 환경
- **React 18 + TypeScript**: 타입 안전성과 최신 기능
- **Vite**: 빠른 빌드 도구
- **React Router DOM**: SPA 라우팅

### 스타일링 & UI
- **커스텀 CSS**: Tailwind 스타일 클래스
- **모던 디자인**: 직관적이고 세련된 인터페이스
- **다크/라이트 테마**: 사용자 선호도 지원

### 데이터 관리
- **브라우저 로컬 스토리지**: 백엔드 서버 불필요
- **영구 데이터 저장**: 브라우저 종료 후에도 데이터 유지
- **샘플 데이터**: 5개 도메인별 예시 아이디어 제공

## 🌟 독특한 특징

### 한국어 특화
- **완전 한국어 UI**: 한국 사용자를 위한 현지화
- **한국형 비즈니스 도메인**: 로보틱스, 부동산 테크, 헬스케어, IoT, 이커머스

### 서버리스 아키텍처
- **백엔드 서버 불필요**: 클라이언트 사이드만으로 완전 동작
- **즉시 사용 가능**: 설치나 설정 없이 바로 사용

### 포괄적 메타데이터
- **상세한 아이디어 추적**: 생성일, 수정일, 상태, 우선순위
- **태그 시스템**: 유연한 아이디어 분류'
WHERE NOT EXISTS (SELECT 1 FROM java_portfolio.projects WHERE id = 'idea-manager');

-- Unble Budget App Project
INSERT INTO java_portfolio.projects (id, title, description, git_url, live_url, details) 
SELECT 'unble-budget-app', 'Unble Budget - 스마트 가계부 애플리케이션', 'Spring Boot와 JWT 인증을 활용한 개인 및 가족용 재정 관리 애플리케이션입니다. 수입/지출 추적, 월별 통계, 예산 계획 기능을 제공합니다.', 'https://github.com/araeLaver/unble-budget-app', 'https://unble-budget-production.koyeb.app/', '# Unble Budget - 스마트 재정 관리

개인과 가족을 위한 포괄적인 재정 추적 및 예산 관리 시스템입니다.

## 💰 핵심 기능

### 사용자 인증 & 데이터 격리
- **JWT 토큰 기반 인증**: 안전한 사용자 세션 관리
- **BCrypt 암호화**: 강력한 비밀번호 보안
- **개별 데이터 보호**: 사용자별 완전한 데이터 격리

### 거래 관리 시스템
- **수입/지출 추적**: 상세한 거래 내역 기록
- **8개 기본 카테고리**: 체계적인 지출 분류
- **실시간 잔액 계산**: 즉시 반영되는 재정 상태
- **거래 내역 검색**: 날짜, 카테고리별 필터링

### 재정 분석 & 통계
- **월별 재정 요약**: 수입, 지출, 저축 통계
- **카테고리별 분석**: 지출 패턴 시각화
- **예산 대비 실적**: 목표 대비 달성률 추적
- **연간/월간 트렌드**: 장기 재정 흐름 분석

## 🛠️ 기술 스택

### 백엔드
- **Java 17 + Spring Boot 3.2**: 최신 엔터프라이즈 기술
- **Spring Security + JWT**: 강력한 인증/인가 시스템
- **Spring Data JPA**: 효율적인 데이터 액세스
- **PostgreSQL**: 안정적인 관계형 데이터베이스

### 프론트엔드
- **Vanilla JavaScript**: 경량화된 클라이언트
- **반응형 웹 디자인**: 모든 디바이스 지원
- **AJAX 통신**: 부드러운 사용자 경험

### 데이터 정확성
- **BigDecimal 사용**: 정확한 금융 계산
- **트랜잭션 처리**: 데이터 일관성 보장
- **입력 유효성 검사**: 잘못된 데이터 방지

## 🏗️ 아키텍처

### 데이터베이스 설계
- **사용자 테이블**: 인증 정보 및 프로필
- **거래 테이블**: 상세한 거래 기록
- **예산 계획 테이블**: 목표 설정 및 추적

### API 엔드포인트
- **인증 API**: 로그인, 회원가입, 토큰 갱신
- **거래 API**: CRUD 및 검색/필터링
- **통계 API**: 월별/연간 재정 분석

### 배포 환경
- **개발/운영 환경 분리**: Spring Profile 활용
- **Koyeb 클라우드**: PostgreSQL과 함께 통합 호스팅
- **포트 9090**: 기본 서버 포트 (설정 가능)'
WHERE NOT EXISTS (SELECT 1 FROM java_portfolio.projects WHERE id = 'unble-budget-app');

-- Java Portfolio Project
INSERT INTO java_portfolio.projects (id, title, description, git_url, live_url, details) 
SELECT 'java-portfolio-web', 'Java Portfolio - 개인 포트폴리오 웹사이트', '이 포트폴리오 사이트 자체입니다! Spring Boot, Thymeleaf, PostgreSQL을 활용한 프로젝트 관리 시스템으로, 관리자 인증과 마크다운 지원 기능을 제공합니다.', 'https://github.com/araeLaver/java-portfolio', 'https://java-portfolio-production.up.railway.app/', '# Java Portfolio Web Application

바로 지금 보고 계신 이 포트폴리오 웹사이트입니다!

## 🎯 프로젝트 개요

개인 프로젝트를 체계적으로 관리하고 전시할 수 있는 포트폴리오 웹사이트입니다. 관리자 인증을 통한 프로젝트 등록/수정과 방문자를 위한 깔끔한 프로젝트 전시 기능을 제공합니다.

## 🛠️ 기술 스택

### 백엔드
- **Java 17**: 최신 LTS Java 버전
- **Spring Boot 3.3.2**: 현대적인 Spring 프레임워크
- **Spring Security**: 관리자 인증 및 보안
- **PostgreSQL**: 안정적인 관계형 데이터베이스

### 프론트엔드
- **Thymeleaf**: 서버 사이드 템플릿 엔진
- **Tailwind CSS**: 유틸리티 우선 CSS 프레임워크
- **반응형 디자인**: 모든 디바이스에서 최적 경험

### 배포 & 인프라
- **Docker**: 컨테이너화된 배포
- **Railway Platform**: 클라우드 배포 플랫폼
- **PostgreSQL on Railway**: 매니지드 데이터베이스

## ✨ 주요 기능

### 프로젝트 관리
- **프로젝트 목록**: 모든 프로젝트 한눈에 보기
- **상세 페이지**: 각 프로젝트의 자세한 정보
- **마크다운 지원**: 풍부한 프로젝트 설명
- **기술 스택 표시**: 사용된 기술들 태그 형태로 표시

### 관리자 기능
- **보안 로그인**: Spring Security 기반 인증
- **CRUD 작업**: 프로젝트 생성, 수정, 삭제
- **마크다운 에디터**: 실시간 프리뷰 지원
- **이미지 업로드**: 프로젝트 스크린샷 관리

### 사용자 경험
- **직관적 네비게이션**: 쉬운 프로젝트 탐색
- **반응형 레이아웃**: 모바일/데스크톱 최적화
- **빠른 로딩**: 최적화된 성능
- **SEO 친화적**: 검색 엔진 최적화

## 🏗️ 아키텍처

### MVC 패턴
- **Controller**: 요청 처리 및 라우팅
- **Service**: 비즈니스 로직
- **Entity/Repository**: 데이터 액세스 레이어

### 보안 구성
- **폼 기반 로그인**: `/login` 엔드포인트
- **세션 관리**: 안전한 관리자 세션
- **CSRF 보호**: 크로스 사이트 요청 위조 방지

### 데이터베이스 스키마
- **projects 테이블**: 프로젝트 기본 정보
- **project_stack 테이블**: 기술 스택 정보
- **스키마 분리**: `java_portfolio` 전용 스키마

## 🚀 특별한 점

이 프로젝트는 **메타 프로젝트**입니다 - 포트폴리오를 보여주기 위한 포트폴리오 사이트 자체가 하나의 프로젝트인 셈이죠! Spring Boot의 강력함과 현대적 웹 개발 기술을 실제로 적용한 살아있는 예시입니다.'
WHERE NOT EXISTS (SELECT 1 FROM java_portfolio.projects WHERE id = 'java-portfolio-web');

-- Daily Messages App Project (React + FastAPI version)
INSERT INTO java_portfolio.projects (id, title, description, git_url, live_url, details) 
SELECT 'daily-messages-react', 'Daily Messages - 영감을 주는 일일 명언 앱', 'React와 FastAPI를 활용한 일일 영감 명언 제공 웹 애플리케이션입니다. 15개 카테고리의 190+ 명언을 제공하며, 글래스모피즘 디자인과 즐겨찾기 기능을 지원합니다.', 'https://github.com/araeLaver/daily-messages-app', 'https://daily-messages-production.netlify.app/', '# Daily Messages - 일일 영감 명언

매일 새로운 영감을 전달하는 현대적인 명언 애플리케이션입니다.

## ✨ 핵심 기능

### 일일 명언 시스템
- **날짜 기반 고정 명언**: 매일 동일한 날짜에 같은 명언 제공
- **지능적 중복 방지**: 스마트한 명언 선택 메커니즘
- **15개 카테고리**: 동기부여, 성공, 행복, 사랑 등 다양한 주제
- **190+ 명언 데이터베이스**: 지속적으로 확장되는 명언 컬렉션

### 사용자 경험
- **즐겨찾기 기능**: 마음에 드는 명언 저장
- **카테고리별 탐색**: 원하는 주제의 명언 쉽게 찾기
- **반응형 디자인**: 모바일, 태블릿, 데스크톱 최적화
- **접근성 지원**: 모든 사용자를 위한 웹 접근성

### 현대적 디자인
- **글래스모피즘 UI**: \"React Bits\" 스타일의 세련된 디자인
- **부드러운 애니메이션**: 자연스러운 사용자 인터페이스
- **직관적 네비게이션**: 쉽고 빠른 명언 탐색

## 🛠️ 기술 스택

### 프론트엔드
- **React 18**: 최신 React 기능 활용
- **Tailwind CSS**: 유틸리티 우선 스타일링
- **코드 스플리팅**: 빠른 로딩을 위한 지연 로딩
- **PWA 준비**: Progressive Web App 기능 준비

### 백엔드
- **FastAPI + Python**: 빠르고 현대적인 API 서버
- **PostgreSQL**: Koyeb 호스팅 데이터베이스
- **RESTful API**: 표준화된 API 설계

### 배포 & 인프라
- **Netlify**: 프론트엔드 배포 및 CDN
- **Koyeb**: 백엔드 API 서버 호스팅
- **PostgreSQL on Koyeb**: 매니지드 데이터베이스

## ⚡ 성능 & 최적화

### 응답 성능
- **200ms 미만 응답**: 빠른 API 응답 시간
- **99.9% 업타임**: 안정적인 서비스 가용성
- **글로벌 CDN**: 전 세계 빠른 콘텐츠 전송

### 최적화 기법
- **코드 스플리팅**: 필요한 코드만 로드
- **이미지 최적화**: WebP 포맷 지원
- **캐싱 전략**: 효율적인 리소스 관리
- **번들 최적화**: 최소화된 JavaScript 번들

## 🚀 미래 계획

### 예정된 기능
- **PWA 완전 지원**: 오프라인 사용 가능
- **사용자 계정 시스템**: 개인화된 명언 추천
- **다국어 지원**: 여러 언어로 명언 제공
- **AI 기반 추천**: 사용자 선호도 기반 명언 추천

### 데이터 확장
- **500개 목표**: 명언 데이터베이스 확장
- **새로운 카테고리**: 더 다양한 주제 추가
- **사용자 기여**: 커뮤니티 명언 제출 기능

## 💡 독특한 특징

- **일관된 일일 경험**: 같은 날짜에 항상 동일한 명언
- **감정 기반 카테고리**: 사용자의 현재 기분에 맞는 명언
- **미니멀한 인터페이스**: 명언에 집중할 수 있는 깔끔한 디자인
- **빠른 액세스**: 즉시 로딩되는 일일 명언'
WHERE NOT EXISTS (SELECT 1 FROM java_portfolio.projects WHERE id = 'daily-messages-react');