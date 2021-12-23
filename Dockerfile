FROM openjdk:8

RUN curl -L "https://github.com/snowplow-product/msc-schema-ci-tool/releases/download/1.0.0/data_structures_ci_1.0.0.zip" | jar xv && chmod +x ./data-structures-ci

ENTRYPOINT ["/data-structures-ci"]
CMD ["--help"]