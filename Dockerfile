FROM openjdk:8

RUN curl -L "https://dl.bintray.com/snowplow/snowplow-generic/data_structures_ci_0.3.1.zip" | jar xv && chmod +x ./data-structures-ci

ENTRYPOINT ["/data-structures-ci"]
CMD ["--help"]