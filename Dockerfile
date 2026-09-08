# Standalone Dockerfile for the pipeline exercise.

# Deliberately self-contained — it does not COPY or depend on any app code,

# so the trainee's build step succeeds once the workflow YAML is correct.
 
FROM alpine:latest
 
# A tiny bit of work so the build has real layers to run.

RUN echo "DevOps review image built successfully" > /message.txt
 
CMD ["cat", "/message.txt"]
