# Terraform Fargate ECS Cluster sample website
## Purpose:
This repo shows how to deploy and publish a sample nginx container to aws using terraform scripts.

## Requirements:
* terraform installed (more informations are [here](https://www.terraform.io/))
* an aws account
* your iam user aws key and secret
* a key-pair name and file (a user guide is [here](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html))

## Preparation:
clone this repo: `git clone https://github.com/gsiciliano/terraform-ecs-sample.git`

rename file `terraform.tfvars.example` in `terraform.tfvars`
edit `terraform.tfvars` replacing:
* `aws_access_key` = "your-aws-access-key"
* `aws_secret_key` = "your-aws-secret-key"
* `aws_key_pair_name` = "your-aws-key-pair-name"
* `aws_key_pair_file` = "your-aws-key-pair.pem"

## Run terraform:
cd in repo folder: `cd terraform-ecs-sample`
init terraform: `terraform init`
run terraform: `terraform apply`

## How to check if it works:
When terraform deploy is done it will display your nginx-alb address, then you can open your favorite browser and navigate the given url

Ouput should be something like this:
```
Apply complete! Resources: 27 added, 0 changed, 0 destroyed.

Outputs:

ecs_cluster_runner_ip = [
  [
    "52.19.149.208",
  ],
]
nginx_dns_lb = "nginx-load-balancer-1889713574.eu-west-1.elb.amazonaws.com"
```
## And now: how to destroy everything!
If you want to remove all the infrastructure and resources create with terraform apply, put `terraform destroy` command in the terminal and then answer "yes" to the question to confirm your decision.
After some minutes you can say goodbye to your nginx-ecs infrastructure.

Final output sound like this:
`Destroy complete! Resources: 27 destroyed.`

That's all