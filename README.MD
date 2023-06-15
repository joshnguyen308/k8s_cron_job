BUILD IMAGE
    1. BUILD IMAGE
        docker build -t my-kubectl-image .
    2. TAG IMAGE
        docker tag my-kubectl-image:latest <your-aws-account-id>.dkr.ecr.<your-region>.amazonaws.com/your-repository-name:latest
    3. Log in to ECR
        aws ecr get-login-password --region <your-region> | docker login --username AWS --password-stdin <your-aws-account-id>.dkr.ecr.<your-region>.amazonaws.com
    4. Push the Docker image to your ECR repository
        docker push <your-aws-account-id>.dkr.ecr.<your-region>.amazonaws.com/your-repository-name:latest