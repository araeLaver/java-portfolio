# Use Maven with OpenJDK 17
FROM maven:3.9.6-eclipse-temurin-17

# Set working directory
WORKDIR /app

# Copy pom.xml first for better caching
COPY pom.xml .

# Download dependencies
RUN mvn dependency:go-offline -B

# Copy source code
COPY src src

# Build the application
RUN mvn clean package -DskipTests -B

# Expose port
EXPOSE 8080

# Run the application with memory optimization
CMD ["java", "-Xmx400m", "-Xms200m", "-XX:+UseG1GC", "-XX:MaxGCPauseMillis=200", "-XX:+UnlockExperimentalVMOptions", "-XX:+UseContainerSupport", "-Dspring.profiles.active=prod", "-Dserver.port=${PORT:-8080}", "-jar", "target/portfolio-app-0.0.1-SNAPSHOT.jar"]