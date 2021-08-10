# Debian GNU/Linux 10 (1.13.10-buster)
FROM golang:1.16-buster

# Install zip command
RUN apt install zip

# copy entrypoint file
COPY entrypoint.go /usr/bin/entrypoint.go

# change mode of the entrypoint file
RUN chmod +x /usr/bin/entrypoint.go

# set entrypoint command
ENTRYPOINT [ "go", "run", "/usr/bin/entrypoint.go" ]
