FROM openjdk:8

RUN curl -L "http://dl.bintray.com/snowplow/snowplow-generic/schema_ci_0.2.0.zip" | jar xv && chmod +x ./schema-ci

ENTRYPOINT ["/schema-ci"]
CMD ["--help"]