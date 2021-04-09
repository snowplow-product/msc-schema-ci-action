FROM openjdk:8

RUN curl -L "https://github.com/snowplow-product/msc-schema-ci-tool/releases/download/0.3.3/data_structures_ci_0.3.3.zip" | jar xv && chmod +x ./data-structures-ci

ENTRYPOINT ["/data-structures-ci"]
CMD ["--help"]