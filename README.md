# About this project

This is a sample project to test creating an AFT module (Account Factory For Terraform) managed by a Terraform Cloud workspace using GitHub as a source repository.

## Example of IAM Role for Terraform Cloud Identity Provider

{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Principal": {
                "Federated": "arn:aws:iam::389889727508:oidc-provider/app.terraform.io"
            },
            "Action": "sts:AssumeRoleWithWebIdentity",
            "Condition": {
                "StringEquals": {
                    "app.terraform.io:aud": "aws.workload.identity"
                },
                "StringLike": {
                    "app.terraform.io:sub": "organization:<organizationName>:project:*:workspace:*:run_phase:*"
                }
            }
        }
    ]
}

Add this role ARN into a Terraform variable in the workspace

