FROM eclipse-temurin:21-jdk

WORKDIR /app

# Copy project files
COPY . .

# Build the project
RUN ./mvnw clean install

# Run the application
CMD ["java", "-jar", "target/chat-app-backend-0.0.1-SNAPSHOT.jar"]
