FROM openjdk:8

RUN curl -L "https://github.com/snowplow-product/msc-schema-ci-tool/releases/download/0.3.5/data_structures_ci_0.3.5.zip" | jar xv && chmod +x ./data-structures-ci

ENTRYPOINT ["/data-structures-ci"]
CMD ["--help"]