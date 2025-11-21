package com.portfolio.config;

import com.portfolio.entity.ProjectEntity;
import com.portfolio.repository.ProjectRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

import java.util.Arrays;

@Component
public class DataInitializer implements CommandLineRunner {

    private static final Logger logger = LoggerFactory.getLogger(DataInitializer.class);

    @Autowired
    private ProjectRepository projectRepository;

    @Override
    public void run(String... args) throws Exception {
        // 주요 포트폴리오 프로젝트 3개만 추가
        if (projectRepository.count() == 0) {
            logger.info("Initializing database with featured portfolio projects...");

            // 1. BEAM - Global Security Messenger
            ProjectEntity beam = new ProjectEntity();
            beam.setId("beam-messenger");
            beam.setTitle("BEAM - 글로벌 보안 메신저");
            beam.setDescription("빛의 속도로 전달되는 메시지! JWT 인증, WebSocket 실시간 통신, 파일 공유 기능을 갖춘 차세대 보안 메신징 플랫폼입니다.");
            beam.setGitUrl("https://github.com/araeLaver/simple-chat-server");
            beam.setLiveUrl("");
            beam.setStack(Arrays.asList("Java 17", "Spring Boot 3.2", "WebSocket (STOMP)", "Spring Security", "PostgreSQL", "Docker", "Koyeb"));
            beam.setDetails("# BEAM - Global Security Messenger\n\n*\"Messages at the speed of light\"* - 빛의 속도로 메시지를 전달하는 차세대 보안 메신저 플랫폼입니다.\n\n## 💬 핵심 기능\n\n### 실시간 메시징\n- **1:1 직접 메시지**: 개인 간 실시간 대화\n- **그룹 채팅**: 최대 100명까지 참여 가능한 그룹 채팅룸\n- **타이핑 표시기**: 상대방이 입력 중일 때 실시간 표시\n- **온라인 상태**: 친구들의 접속 상태 실시간 확인\n- **읽음 확인**: 메시지 읽음 여부 표시\n- **메시지 검색**: 대화 내용 전체 검색 기능\n\n### 소셜 기능\n- **친구 시스템**: 친구 요청/수락/거절/차단 기능\n- **친구 관리**: 체계적인 친구 목록 관리\n- **프로필 관리**: 사용자 프로필 및 상태 메시지\n\n### 파일 & 미디어 공유\n- **파일 전송**: 최대 10MB 파일 업로드/다운로드\n- **자동 썸네일**: 이미지/비디오 자동 썸네일 생성\n- **다양한 형식 지원**: 이미지, 비디오, 오디오, 문서\n- **다운로드 추적**: 파일 다운로드 내역 관리\n\n### 보안 기능\n- **JWT 인증**: 안전한 토큰 기반 인증 시스템\n- **BCrypt 암호화**: 강력한 비밀번호 암호화\n- **End-to-End 암호화**: 종단 간 암호화 프레임워크\n- **전화번호 인증**: 사용자 신원 확인 기능\n\n## 🛠️ 기술 스택\n\n### 백엔드 아키텍처\n- **Java 17 + Spring Boot 3.2**: 최신 Java 생태계\n- **WebSocket (STOMP + SockJS)**: 실시간 양방향 통신\n  - `/topic` 엔드포인트: 그룹 브로드캐스트\n  - `/queue` 엔드포인트: 1:1 메시징\n- **Spring Data JPA**: 14개 엔티티 최적화된 데이터 액세스\n- **Spring Security**: 엔터프라이즈급 보안\n\n### 데이터베이스\n- **PostgreSQL**: 프로덕션 환경 (인덱스 쿼리 최적화)\n- **H2**: 개발 환경 인메모리 DB\n- **HikariCP**: 고성능 커넥션 풀링\n- **트랜잭션 관리**: 배치 처리 및 성능 최적화\n\n### 인프라 & 배포\n- **Docker**: 컨테이너화된 배포\n- **Koyeb/AWS**: 클라우드 배포 플랫폼\n\n### 프론트엔드\n- **Vanilla JavaScript**: SPA (Single Page Application)\n\n## 🚀 기술 하이라이트\n\n- **실시간 통신 아키텍처**: STOMP over WebSocket으로 효율적인 메시징\n- **확장 가능한 DB 설계**: 14개 엔티티 간 최적화된 관계\n- **성능 최적화**: 커넥션 풀링 및 배치 처리\n- **크로스 플랫폼 계획**: 웹에서 시작하여 모바일 앱으로 확장 예정");

            // 2. TravelMate - Travel Companion Matching Platform
            ProjectEntity travelMate = new ProjectEntity();
            travelMate.setId("travelmate");
            travelMate.setTitle("TravelMate - 여행 동행자 매칭 플랫폼");
            travelMate.setDescription("혼자 떠나는 여행은 이제 그만! 같은 목적지로 떠나는 여행 동행자를 찾고, 실시간으로 소통하며 함께 여행을 계획하는 소셜 여행 플랫폼입니다.");
            travelMate.setGitUrl("https://github.com/araeLaver/TravelMate");
            travelMate.setLiveUrl("");
            travelMate.setStack(Arrays.asList("Spring Boot 3.2", "Java 17", "React 18", "TypeScript", "PostgreSQL", "WebSocket", "Docker", "Nginx"));
            travelMate.setDetails("# TravelMate - 여행 동행자 매칭 플랫폼\n\n같은 목적지를 향하는 여행자들을 연결하여 더욱 풍성하고 안전한 여행 경험을 제공하는 소셜 플랫폼입니다.\n\n## 🌍 핵심 기능\n\n### 동행자 매칭\n- **여행 그룹 생성**: 목적지, 일정, 예산 등 상세 정보로 여행 그룹 생성\n- **스마트 매칭**: 유사한 여행 계획을 가진 사용자 자동 추천\n- **위치 기반 추천**: 같은 지역을 여행하는 동행자 찾기\n- **필터링 시스템**: 연령대, 성별, 관심사별 매칭 옵션\n\n### 실시간 커뮤니케이션\n- **WebSocket 채팅**: 동행자와 실시간 메시지 교환\n- **그룹 채팅방**: 여행 그룹 전용 채팅 공간\n- **알림 시스템**: 새 메시지 및 매칭 알림\n\n### 사용자 관리\n- **계정 관리**: 회원가입, 로그인, 프로필 관리\n- **OAuth2 소셜 로그인**: 간편한 소셜 계정 연동\n- **JWT 인증**: 안전한 세션 관리\n- **프로필 커스터마이징**: 여행 스타일, 관심사, 경험 공유\n\n### 여행 정보\n- **목적지 추천**: 인기 여행지 및 숨은 명소 정보\n- **로컬 가이드**: 지역별 여행 팁과 추천 코스\n- **리뷰 시스템**: 동행자 및 여행지 평가\n\n## 🛠️ 기술 스택\n\n### 백엔드\n- **Spring Boot 3.2.0**: 최신 Spring 프레임워크\n- **Java 17**: 최신 LTS Java 버전\n- **Spring Security + JWT**: 강력한 인증/인가 시스템\n- **WebSocket**: 실시간 양방향 통신\n- **Spring Data JPA**: 효율적인 데이터 액세스\n\n### 프론트엔드\n- **React 18**: 최신 React 생태계\n- **TypeScript**: 타입 안전성 보장\n- **Responsive CSS3**: 모바일 최적화 반응형 디자인\n- **Axios**: HTTP 클라이언트\n- **Create React App**: 표준화된 React 프로젝트 구조\n\n### 데이터베이스\n- **PostgreSQL**: 프로덕션 환경 RDBMS\n- **H2**: 개발 환경 인메모리 DB\n\n### 인프라 & DevOps\n- **Docker + Docker Compose**: 컨테이너 오케스트레이션\n- **Nginx**: 웹 서버 및 리버스 프록시\n- **Supervisor**: 프로세스 관리\n- **Windows Batch Scripts**: 로컬 개발 환경 자동화\n\n## 🚀 기술 하이라이트\n\n### 풀스택 아키텍처\n- **모듈형 구조**: 백엔드, 프론트엔드, 모바일 컴포넌트 분리\n- **공유 DTO**: 컴포넌트 간 데이터 전송 객체 표준화\n- **RESTful API**: 체계적인 API 설계\n\n### 배포 전략\n- **컨테이너화**: Docker를 통한 일관된 배포 환경\n- **통합 빌드 프로세스**: 자동화된 빌드 파이프라인\n- **Koyeb 배포 가이드**: 클라우드 배포 문서화\n\n### 코드 품질\n- **TypeScript 43.7% + Java 42.4%**: 균형잡힌 풀스택 개발\n- **타입 안전성**: TypeScript로 런타임 에러 최소화\n- **종합 문서**: 배포 가이드 및 API 문서 완비");

            // 3. Idea Manager - Creative Idea Management System
            ProjectEntity ideaManager = new ProjectEntity();
            ideaManager.setId("idea-manager");
            ideaManager.setTitle("Idea Manager - AI 기반 아이디어 관리 시스템");
            ideaManager.setDescription("창의적인 아이디어를 체계적으로 관리하고 AI가 자동으로 분류/태그를 제안하는 스마트 아이디어 관리 플랫폼입니다.");
            ideaManager.setGitUrl("https://github.com/araeLaver/idea-manager");
            ideaManager.setLiveUrl("https://idea-manager-two.vercel.app");
            ideaManager.setStack(Arrays.asList("React 19", "TypeScript 5.8", "Express 5", "PostgreSQL 16", "Vite 7", "Recharts", "@dnd-kit", "JWT"));
            ideaManager.setDetails("# Idea Manager - AI 기반 아이디어 관리 시스템\n\n창업가, 개발자, 창작자를 위한 체계적이고 지능적인 아이디어 캡처 및 관리 도구입니다.\n\n## 💡 핵심 기능\n\n### 완전한 아이디어 관리\n- **CRUD 작업**: 아이디어 생성, 조회, 수정, 삭제\n- **상태 추적**: 초안(Draft) → 진행중(In Progress) → 완료(Completed) → 보관(Archived)\n- **우선순위 설정**: High, Medium, Low 우선순위 레벨\n- **카테고리 분류**: 프로젝트, 비즈니스, 개인 등 체계적 조직\n- **태그 시스템**: 다중 태그로 아이디어 분류 및 검색\n\n### 칸반 보드 (Kanban Board)\n- **드래그 앤 드롭**: 직관적인 상태 변경 인터페이스\n- **4개 워크플로 컬럼**: Draft → In Progress → Completed → Archived\n- **시각적 관리**: 한눈에 보는 프로젝트 진행 상황\n- **@dnd-kit 라이브러리**: 부드러운 드래그 앤 드롭 경험\n\n### 대시보드 & 통계\n- **통계 카드**: 전체/진행중/완료/보관 아이디어 수\n- **분포 차트**: 상태별, 우선순위별 시각화 (Recharts)\n- **최근 활동**: 최근 수정된 아이디어 피드\n- **트렌딩 분석**: 인기 카테고리 및 태그 통계\n\n### 데일리 메모\n- **날짜별 메모**: 일일 기록 및 메모 관리\n- **대시보드 연동**: 빠른 접근 및 확인\n- **검색 기능**: 날짜별 메모 검색\n\n### AI 자동화 기능\n- **자동 카테고리 분류**: AI가 아이디어 내용 분석하여 적절한 카테고리 제안\n- **태그 자동 추천**: 아이디어 키워드 기반 태그 생성\n- **개선 제안**: AI가 아이디어 발전 방향 추천\n\n### 히스토리 추적\n- **변경 로그**: 모든 아이디어 수정 내역 기록\n- **버전 관리**: 과거 버전 조회 가능\n- **활동 타임라인**: 시간순 변경 이력\n\n## 🛠️ 기술 스택\n\n### 프론트엔드\n- **React 19**: 최신 React 버전 (Server Components 지원)\n- **TypeScript 5.8**: 최신 타입스크립트 기능\n- **Vite 7**: 초고속 빌드 도구\n- **React Router DOM 7**: 클라이언트 사이드 라우팅\n- **Recharts**: 데이터 시각화 차트 라이브러리\n- **@dnd-kit**: 현대적인 드래그 앤 드롭 라이브러리\n- **Lucide React**: 아이콘 컴포넌트\n- **date-fns**: 날짜 처리 유틸리티\n\n### 백엔드\n- **Express 5**: 최신 Node.js 웹 프레임워크\n- **PostgreSQL 16**: 최신 관계형 데이터베이스\n- **JWT Authentication**: 안전한 토큰 기반 인증\n- **bcryptjs**: 비밀번호 암호화\n\n### 데이터베이스 설계\n- **Foreign Key 관계**: 데이터 무결성 보장\n- **Cascade Deletion**: 연관 데이터 자동 삭제\n- **인덱싱**: 쿼리 성능 최적화\n\n## 🎨 사용자 경험\n\n### 반응형 디자인\n- **모바일 최적화**: 스마트폰에서도 완벽한 경험\n- **태블릿 지원**: 중간 화면 크기 최적화\n- **데스크톱**: 넓은 화면 활용 레이아웃\n\n### 다크 모드\n- **테마 전환**: 라이트/다크 모드 지원\n- **눈의 피로 감소**: 야간 작업 최적화\n\n### 키보드 단축키\n- **Ctrl+N**: 새 아이디어 생성\n- **Ctrl+K**: 검색 바로가기\n- **생산성 향상**: 빠른 작업 흐름\n\n### PWA (Progressive Web App)\n- **오프라인 지원**: 인터넷 없이도 사용 가능\n- **홈 화면 설치**: 네이티브 앱처럼 사용\n- **푸시 알림**: 중요 업데이트 알림\n\n## 🚀 기술 하이라이트\n\n### 전문적인 풀스택 아키텍처\n- **계층 분리**: Presentation - Business Logic - Data Access\n- **RESTful API**: 표준 REST 원칙 준수\n- **타입 안전성**: TypeScript로 런타임 에러 최소화\n\n### 성능 최적화\n- **코드 스플리팅**: 필요한 코드만 로드\n- **레이지 로딩**: 컴포넌트 지연 로딩\n- **메모이제이션**: 불필요한 리렌더링 방지\n\n### 개발자 경험\n- **종합 API 문서**: 명확한 엔드포인트 설명\n- **타입 정의**: 자동완성 및 타입 체크\n- **에러 핸들링**: 체계적인 에러 관리");

            // 3개 프로젝트만 저장
            projectRepository.save(beam);
            projectRepository.save(travelMate);
            projectRepository.save(ideaManager);

            logger.info("Database initialized with {} featured projects.", projectRepository.count());
        } else {
            logger.info("Database already contains {} projects.", projectRepository.count());
        }
    }
}