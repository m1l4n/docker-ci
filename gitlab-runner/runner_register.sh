#!/bin/bash

docker exec -i ${GITLAB_RUNNER_CONTAINER_NAME} gitlab-runner register -n \
  --url ${CI_SERVER_URL} \
  --registration-token ${CI_JOB_TOKEN} \
  --executor docker \
  --description "My Docker Runner" \
  --docker-image "docker:stable" \
  --docker-privileged