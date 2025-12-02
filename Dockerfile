FROM eclipse-temurin:17-jdk

RUN curl -L "https://github.com/snowplow-product/msc-schema-ci-tool/releases/download/2.0.0/data_structures_ci_2.0.0.zip" | jar xv && chmod +x ./data-structures-ci

ENTRYPOINT ["/data-structures-ci"]
CMD ["--help"]
