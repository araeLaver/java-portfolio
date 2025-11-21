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
        // 주요 포트폴리오 프로젝트 4개만 추가
        if (projectRepository.count() == 0) {
            logger.info("Initializing database with featured portfolio projects...");

            ProjectEntity themeGallery = new ProjectEntity();
            themeGallery.setId("theme-gallery");
            themeGallery.setTitle("Theme Gallery - 테마 기반 이미지 갤러리");
            themeGallery.setDescription("64개 테마와 768개의 고품질 이미지를 제공하는 React 기반 이미지 갤러리입니다.");
            themeGallery.setGitUrl("https://github.com/araeLaver/theme-gallery");
            themeGallery.setLiveUrl("https://theme-gallery-production.vercel.app/");
            themeGallery.setStack(Arrays.asList("React 18.2.0", "TypeScript 4.9.5", "Tailwind CSS 3.3.0", "Framer Motion 10.16.4", "PWA", "Vercel"));
            themeGallery.setDetails("# Theme Gallery\n\n64개의 테마와 768개의 엄선된 고품질 이미지를 제공하는 현대적인 이미지 갤러리 웹 애플리케이션입니다.\n\n## 🎨 주요 기능\n\n### 테마 기반 이미지 브라우징\n- **64개 테마 카테고리**: 자연, 건축, 음식, 동물, 기술 등 다양한 테마\n- **테마별 12개 이미지**: 각 테마마다 신중하게 선택된 고품질 이미지\n- **반응형 그리드 레이아웃**: 모든 디바이스에서 완벽한 표시\n\n### 고급 검색 시스템\n- **실시간 검색**: 입력과 동시에 결과 표시\n- **스마트 필터링**: 이미지 태그와 alt 텍스트를 통한 지능형 검색\n- **카테고리별 필터**: 원하는 테마로 빠른 필터링\n\n### 다운로드 기능\n- **단일/대량 다운로드**: 개별 이미지 또는 전체 테마 다운로드\n- **CORS 우회 로직**: 외부 이미지 다운로드 최적화\n- **자동 파일명 생성**: 의미 있는 파일명 자동 생성\n\n### PWA 지원\n- **오프라인 기능**: 인터넷 연결 없이도 이용 가능\n- **모바일 앱 설치**: 홈 화면에 앱으로 설치 가능\n- **빠른 로딩**: 최적화된 이미지 로딩과 캐싱");

            ProjectEntity secureChat = new ProjectEntity();
            secureChat.setId("simple-chat-server");
            secureChat.setTitle("SecureChat - 실시간 보안 채팅 애플리케이션");
            secureChat.setDescription("다중 채팅룸, AES-256 암호화, 자동 메시지 삭제 기능을 지원하는 Java Spring Boot 기반의 실시간 보안 채팅 애플리케이션입니다.");
            secureChat.setGitUrl("https://github.com/araeLaver/simple-chat-server");
            secureChat.setLiveUrl("https://securechat-production.koyeb.app/");
            secureChat.setStack(Arrays.asList("Java 17", "Spring Boot 3.2", "WebSocket", "PostgreSQL", "Docker", "Koyeb"));
            secureChat.setDetails("# SecureChat - 실시간 보안 채팅\n\n고급 보안 기능과 뛰어난 사용자 경험을 제공하는 실시간 채팅 애플리케이션입니다.\n\n## 🔐 보안 특징\n\n### 다중 채팅룸 지원\n- **표준 채팅룸**: 일반적인 실시간 채팅\n- **비밀 채팅룸**: 비밀번호 보호 및 AES-256 암호화\n- **임시 채팅룸**: 시간 기반 자동 메시지 삭제 (10분, 30분, 1시간)\n\n### 고급 보안 기능\n- **WebSocket Secure (WSS)**: 안전한 데이터 전송\n- **AES-256 암호화**: 비밀 채팅룸 메시지 암호화\n- **자동 메시지 삭제**: 시간 기반 메시지 정리\n- **SSL 데이터베이스 연결**: 안전한 데이터 저장\n\n## 🛠️ 기술 스택\n\n### 백엔드\n- **Java 17 + Spring Boot 3.2**: 최신 Java 기능 활용\n- **WebSocket**: 실시간 양방향 통신\n- **Spring Data JPA**: 데이터 액세스 레이어\n- **PostgreSQL**: 운영 환경 데이터베이스\n\n### 배포 및 인프라\n- **Docker**: 컨테이너화된 배포\n- **Koyeb**: 클라우드 네이티브 플랫폼\n- **환경 변수 기반 설정**: 보안 강화");

            ProjectEntity reactun = new ProjectEntity();
            reactun.setId("reactun");
            reactun.setTitle("Reactun - 로또 번호 생성 및 분석 시스템");
            reactun.setDescription("고급 랜덤 알고리즘과 실시간 데이터 스크래핑을 활용한 로또 번호 생성 및 통계 분석 시스템입니다.");
            reactun.setGitUrl("https://github.com/araeLaver/reactun");
            reactun.setLiveUrl("https://reactun.vercel.app/");
            reactun.setStack(Arrays.asList("React 18", "Chart.js", "Node.js", "Express", "MySQL 8.0", "Vercel"));
            reactun.setDetails("# Reactun - 로또 번호 생성 & 분석\n\n고급 알고리즘과 실시간 데이터 분석을 결합한 종합적인 로또 시스템입니다.\n\n## 🎲 핵심 기능\n\n### 로또 번호 생성\n- **고급 랜덤 알고리즘**: 통계적으로 검증된 번호 생성\n- **커스텀 번호 포함**: 원하는 번호를 포함하여 생성\n- **대량 생성**: 최대 10,000개 번호 동시 생성\n- **중복 제거**: 1-45 범위의 고유한 6개 번호\n- **자동 정렬**: 오름차순 정렬된 결과\n\n### 실시간 데이터 수집\n- **자동 데이터 스크래핑**: 주간 자동 로또 데이터 수집\n- **공식 사이트 연동**: 정확한 당첨 번호 정보\n- **상세 정보 캡처**: 회차, 당첨번호, 보너스번호, 상금 정보\n- **히스토리 관리**: 과거 당첨 번호 데이터베이스\n\n### 통계 분석 & 시각화\n- **Chart.js 활용**: 직관적인 데이터 시각화\n- **번호 출현 빈도**: 가장 많이 나온 번호 분석\n- **당첨 확률 계산**: 실시간 통계적 인사이트\n- **데이터 내보내기**: XLSX 형태로 결과 저장\n\n## 🚀 기술 하이라이트\n\n- **풀스택 JavaScript**: React + Node.js 통합 개발\n- **MySQL 데이터베이스**: 효율적인 데이터 관리\n- **Vercel 배포**: 빠르고 안정적인 서비스");

            ProjectEntity unbleBudget = new ProjectEntity();
            unbleBudget.setId("unble-budget-app");
            unbleBudget.setTitle("Unble Budget - 개인 가계부 관리 시스템");
            unbleBudget.setDescription("JWT 인증과 Spring Security를 활용한 안전한 개인 가계부 관리 REST API 서버입니다.");
            unbleBudget.setGitUrl("https://github.com/araeLaver/unble-budget-app");
            unbleBudget.setLiveUrl("https://unble-budget-production.koyeb.app/");
            unbleBudget.setStack(Arrays.asList("Java 17", "Spring Boot 3.2", "Spring Security", "JWT", "PostgreSQL", "Koyeb"));
            unbleBudget.setDetails("# Unble Budget - 스마트 재정 관리\n\n개인과 가족을 위한 포괄적인 재정 추적 및 예산 관리 시스템입니다.\n\n## 💰 핵심 기능\n\n### 사용자 인증 & 데이터 격리\n- **JWT 토큰 기반 인증**: 안전한 사용자 세션 관리\n- **BCrypt 암호화**: 강력한 비밀번호 보안\n- **개별 데이터 보호**: 사용자별 완전한 데이터 격리\n- **자동 토큰 갱신**: 원활한 사용자 경험\n\n### 거래 관리 시스템\n- **수입/지출 추적**: 상세한 거래 내역 기록\n- **8개 기본 카테고리**: 체계적인 지출 분류 (식비, 교통비, 문화생활 등)\n- **실시간 잔액 계산**: 즉시 반영되는 재정 상태\n- **거래 내역 검색**: 날짜, 카테고리별 필터링\n- **메모 기능**: 각 거래에 상세 메모 추가\n\n### 재정 분석 & 통계\n- **월별 재정 요약**: 수입, 지출, 저축 통계\n- **카테고리별 분석**: 지출 패턴 시각화\n- **예산 대비 실적**: 목표 대비 달성률 추적\n- **연간/월간 트렌드**: 장기 재정 흐름 분석\n\n## 🔧 기술 구현\n\n### 백엔드 아키텍처\n- **RESTful API**: 표준 REST 원칙 준수\n- **계층형 구조**: Controller - Service - Repository\n- **DTO 패턴**: 데이터 전송 최적화\n- **예외 처리**: 전역 예외 핸들러\n\n### 보안 설계\n- **Spring Security**: 엔터프라이즈급 보안\n- **JWT 인증**: Stateless 인증 방식\n- **CORS 설정**: 안전한 크로스 오리진 요청\n- **입력 검증**: 모든 입력 데이터 유효성 검사");

            // 4개 프로젝트만 저장
            projectRepository.save(themeGallery);
            projectRepository.save(secureChat);
            projectRepository.save(reactun);
            projectRepository.save(unbleBudget);

            logger.info("Database initialized with {} featured projects.", projectRepository.count());
        } else {
            logger.info("Database already contains {} projects.", projectRepository.count());
        }
    }
}