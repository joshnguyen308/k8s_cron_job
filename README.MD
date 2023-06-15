## GUIDE

1. build image
```sh
docker build -t my-kubectl-image .
```

2. Tag image

```sh
docker tag my-kubectl-image:latest <your-aws-account-id>.dkr.ecr.<your-region>.amazonaws.com/your-repository-name:latest
```

3. Log in to ECR

```sh
aws ecr get-login-password --region <your-region> | docker login --username AWS --password-stdin <your-aws-account-id>.dkr.ecr.<your-region>.amazonaws.com
```

4. Push the Docker image to your ECR repository

```sh
docker push <your-aws-account-id>.dkr.ecr.<your-region>.amazonaws.com/your-repository-name:latest
```
