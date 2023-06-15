# Base image
FROM ubuntu:latest

# Install required dependencies
RUN apt-get update && \
    apt-get install -y curl

# Install kubectl
RUN curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl" && \
    chmod +x ./kubectl && \
    mv ./kubectl /usr/local/bin/kubectl

# Create a directory for kubeconfig
RUN mkdir /root/.kube

# Copy kubeconfig from local machine to the Docker image
COPY ./path/to/local/kubeconfig /root/.kube/config

# Set the default command to run when the container starts
CMD ["/bin/bash"]
