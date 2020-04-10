FROM openjdk:8

RUN curl -L "http://dl.bintray.com/snowplow/snowplow-generic/schema_ci_0.1.0.zip" | jar xv

ENTRYPOINT ["./schema-ci"]
CMD ["--help"]