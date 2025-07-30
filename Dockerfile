# Use OpenJDK 17 as base image
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy all project files
COPY . .

# Make mvnw executable
RUN chmod +x ./mvnw

# Build the application (this will download dependencies automatically)
RUN ./mvnw clean package -DskipTests -B

# Expose port
EXPOSE 8080

# Run the application
CMD ["java", "-Dserver.port=${PORT:-8080}", "-jar", "target/portfolio-app-0.0.1-SNAPSHOT.jar"]