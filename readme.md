# Terraform Fargate ECS Cluster sample website
## Purpose:
This repo shows how to deploy and publish a sample nginx container to aws using terraform scripts.

## Requirements:
* terraform installed (more informations [here](https://www.terraform.io/))
* an aws account
* your iam user aws key and secret
* a key-pair name and file

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
(put here output lines)

## And now: how to destroy everything!
If you want to remove all the infrastructure and resources create with terraform apply, put `terraform destroy` command in the terminal and then answer "yes" to the question to confirm your decision.
After some time you can say goodbye to your nginx-ecs infrastructure.

Final output sound like this:
`Destroy complete! Resources: 27 destroyed.`