# AWS Lambda + EFS CloudFormation starter template


Starter template for AWS Lambda EFS mounts.  Creates the entire infrastructure and related IAM permissions required for a Lambda function to mount an EFS volume.

The Lambda in this example is trivially simple [Lambda function](src/lambda.js).

## Usage

Deploy a stack using `make deploy` and provide:

* `STACK_NAME` - the name of the stack to create
* `DEPLOYMENT_BUCKET` - the name of a S3 bucket for cloudformation packaging

For example:

```
make deploy STACK_NAME=test-stack DEPLOYMENT_BUCKET=deployment-bucket
```
