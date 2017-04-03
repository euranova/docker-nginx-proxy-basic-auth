# docker-nginx-proxy-basic-auth

A docker image to use nginx as a reverse proxy with basic auth.
Usage in a docker-compose file :

```yml
nginx:
  image: euranova/nginx-proxy-basic-auth:1.11.10-alpine
  volumes:
  # a htpasswd file should be provided
  - ./htpasswd:/htpasswd
  # a custom nginx.conf can be used if needed
  # - ./nginx.conf:/nginx.conf
  links:
  - application-server
  environment:
    FORWARD_HOST: application-server
    # the port of the application server
    FORWARD_PORT: 8080
    # the port nginx will listen on
    PUBLIC_PORT: 80
    # what nginx will use as server name
    PUBLIC_SERVER_NAME: "my-server-name"
  ports:
  - 80:80
```
