# FROM eclipse-temurin:17-jdk-jammy AS deps

# WORKDIR /build

# COPY solutec-rootca.crt /usr/local/share/ca-certificates/solutec-rootca.crt
# RUN update-ca-certificates

# RUN keytool -import -noprompt \
#     -alias entreprise-ca \
#     -file /usr/local/share/ca-certificates/solutec-rootca.crt \
#     -keystore $JAVA_HOME/lib/security/cacerts \
#     -storepass changeit

# COPY --chmod=0755 mvnw mvnw
# COPY .mvn/ .mvn/

# RUN --mount=type=bind,source=pom.xml,target=pom.xml \
#     --mount=type=cache,target=/root/.m2 ./mvnw dependency:go-offline -DskipTests

# ################################################################################

# FROM deps AS package

# WORKDIR /build

# COPY ./src src/
# RUN --mount=type=bind,source=pom.xml,target=pom.xml \
#     --mount=type=cache,target=/root/.m2 \
#     ./mvnw package -DskipTests && \
#     mv target/$(./mvnw help:evaluate -Dexpression=project.artifactId -q -DforceStdout)-$(./mvnw help:evaluate -Dexpression=project.version -q -DforceStdout).jar target/app.jar

# # ################################################################################

# FROM package AS extract

# WORKDIR /build

# RUN java -Djarmode=layertools -jar target/app.jar extract --destination target/extracted

# # ################################################################################

# FROM eclipse-temurin:17-jre-jammy AS final

# ARG UID=10001
# RUN adduser \
#     --disabled-password \
#     --gecos "" \
#     --home "/nonexistent" \
#     --shell "/sbin/nologin" \
#     --no-create-home \
#     --uid "${UID}" \
#     appuser


# COPY solutec-rootca.crt /usr/local/share/ca-certificates/solutec-rootca.crt
# RUN update-ca-certificates

# WORKDIR /app

# USER appuser

# COPY --from=extract build/target/extracted/dependencies/ ./
# COPY --from=extract build/target/extracted/spring-boot-loader/ ./
# COPY --from=extract build/target/extracted/snapshot-dependencies/ ./
# COPY --from=extract build/target/extracted/application/ ./

# EXPOSE 8080

# ENTRYPOINT [ "java", "org.springframework.boot.loader.JarLauncher" ]

FROM eclipse-temurin:17-jdk-jammy

COPY solutec-rootca.crt /usr/local/share/ca-certificates/solutec-rootca.crt
RUN update-ca-certificates

RUN keytool -import -noprompt \
    -alias entreprise-ca \
    -file /usr/local/share/ca-certificates/solutec-rootca.crt \
    -keystore $JAVA_HOME/lib/security/cacerts \
    -storepass changeit
 
WORKDIR /app
 
COPY .mvn/ .mvn
COPY mvnw pom.xml ./
RUN ./mvnw dependency:go-offline
 
COPY src ./src
 
CMD ["./mvnw", "spring-boot:run"]