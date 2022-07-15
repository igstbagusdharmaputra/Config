registration_token=GR1348941SYQiJ1Us4S1gDCjrPgoq
url=http://gitlab.example.com/

docker exec -it gitlab-runner \
  gitlab-runner register \
    --non-interactive \
    --registration-token ${registration_token} \
    --locked=false \
    --description docker-stable \
    --url ${url} \
    --executor docker \
    --docker-image docker:stable \
    --docker-network-mode gitlab-on-docker_gitlabnetwork
