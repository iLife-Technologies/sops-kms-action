# Set the base image to use for subsequent instructions
FROM ghcr.io/getsops/sops:v3.8.1-alpine


# Set the working directory inside the container
WORKDIR /usr/src

# Copy any source file(s) required for the action
COPY entrypoint.sh .

# Configure the container to be run as an executable
ENTRYPOINT ["/usr/src/entrypoint.sh"]
