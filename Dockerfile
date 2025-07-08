FROM eclipse-temurin:21-jdk

WORKDIR /app

# Copy all files
COPY . .

# Build the Spring Boot app (skip tests)
RUN ./mvnw clean install -DskipTests

# Run the app
CMD ["java", "-jar", "target/chat-app-backend-0.0.1-SNAPSHOT.jar"]
