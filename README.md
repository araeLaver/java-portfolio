# 🚀 Java 포트폴리오 웹사이트

Spring Boot 기반의 개인 포트폴리오 웹사이트입니다. 프로젝트 관리 및 전시를 위한 현대적인 웹 애플리케이션을 제공합니다. 새로운 파비콘과 GitHub Actions CI/CD가 추가되었습니다.

## 📋 프로젝트 개요

이 포트폴리오 웹사이트는 개인 프로젝트들을 체계적으로 관리하고 전시할 수 있는 플랫폼입니다. 관리자 인증을 통해 프로젝트를 등록/수정할 수 있으며, 방문자들은 프로젝트 목록과 상세 정보를 조회할 수 있습니다.

## 🛠️ 기술 스택

### Backend
- **Java 17**
- **Spring Boot 3.3.2**
- **Spring Security** - 관리자 인증
- **Spring Web** - MVC 패턴
- **Maven** - 빌드 도구

### Frontend
- **Thymeleaf** - 템플릿 엔진
- **JavaScript** (79.3%)
- **CSS** (10.6%)
- **HTML** (5.8%)
- **Tailwind CSS** - 스타일링

### 기타
- **CommonMark** - 마크다운 처리
- **JSON** - 데이터 저장
- **Docker** - 컨테이너화
- **Render** - 배포 플랫폼

## ✨ 주요 기능

### 🏠 포트폴리오 페이지
- 프로젝트 목록 조회
- 프로젝트 상세 정보 표시
- 마크다운 기반 프로젝트 설명
- 반응형 웹 디자인

### 🔐 관리자 기능
- Spring Security 기반 인증 시스템
- 프로젝트 생성/수정 관리 패널
- 입력 유효성 검증
- 안전한 데이터 관리

### 📂 데이터 관리
- JSON 파일 기반 데이터 저장
- CRUD 작업 지원
- 마크다운을 HTML로 자동 변환
- 외부 파일 및 리소스 지원

## 🏗️ 프로젝트 구조

```
src/main/java/com/portfolio/
├── PortfolioAppApplication.java    # 메인 애플리케이션
├── config/
│   └── SecurityConfig.java         # Spring Security 설정
├── controller/
│   ├── ProjectController.java      # 프로젝트 조회 컨트롤러
│   └── AdminController.java        # 관리자 패널 컨트롤러
├── dto/
│   └── Project.java                # 프로젝트 데이터 객체
└── service/
    └── ProjectService.java         # 프로젝트 비즈니스 로직
```

## 🚀 설치 및 실행

### 필수 요구사항
- Java 17 이상
- Maven 3.6 이상

### 로컬 실행
1. **프로젝트 클론**
   ```bash
   git clone https://github.com/araeLaver/java-portfolio.git
   cd java-portfolio
   ```

2. **의존성 설치 및 빌드**
   ```bash
   mvn clean install
   ```

3. **애플리케이션 실행**
   ```bash
   mvn spring-boot:run
   ```

4. **브라우저에서 접속**
   ```
   http://localhost:8080
   ```

### Docker 실행
```bash
docker build -t portfolio-app .
docker run -p 8080:8080 portfolio-app
```

## 📖 사용 방법

### 일반 사용자
1. 메인 페이지에서 프로젝트 목록 조회
2. 관심 있는 프로젝트 클릭하여 상세 정보 확인
3. GitHub 링크 또는 라이브 데모 링크 접속

### 관리자
1. `/login` 페이지에서 로그인
   - 사용자명: `admin`
   - 비밀번호: `password`
2. `/admin` 관리자 패널 접속
3. 새 프로젝트 추가 또는 기존 프로젝트 수정

## 🔧 설정

### 애플리케이션 설정
`src/main/resources/application.properties`에서 다음 설정 가능:
- 서버 포트
- 로깅 레벨
- 기타 Spring Boot 설정

### 보안 설정
`SecurityConfig.java`에서 인증 관련 설정 수정 가능:
- 사용자 계정 정보
- 접근 권한 규칙
- 로그인/로그아웃 페이지

## 🌐 배포

이 프로젝트는 Render 플랫폼을 통해 배포됩니다:
- `render.yaml` - 배포 설정 파일
- `system.properties` - Java 버전 설정
- 자동 빌드 및 배포 지원

## 📝 데이터 구조

프로젝트 데이터는 다음 구조로 관리됩니다:

```json
{
  "id": "1",
  "title": "프로젝트 제목",
  "description": "프로젝트 간단 설명",
  "gitUrl": "https://github.com/username/repo",
  "liveUrl": "https://demo-url.com",
  "stack": ["Java", "Spring Boot", "React"],
  "details": "마크다운 형식의 상세 설명"
}
```

## 🤝 기여하기

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📞 연락처

프로젝트 관련 문의사항이 있으시면 GitHub Issues를 통해 연락해주세요.

## 📄 라이선스

이 프로젝트는 MIT 라이선스 하에 배포됩니다. 자세한 내용은 `LICENSE` 파일을 참조하세요.

---

⭐ 이 프로젝트가 도움이 되셨다면 Star를 눌러주세요!