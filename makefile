# 
# make output.yml DEPLOYMENT_BUCKET=deployment-bucket
#
# make STACK_NAME=test-stack DEPLOYMENT_BUCKET=deployment-bucket
#
all: output.yml
	aws cloudformation deploy --template $< --stack-name $(STACK_NAME) --capabilities CAPABILITY_IAM
	aws cloudformation describe-stacks --stack-name $(STACK_NAME) --query Stacks[].Outputs --output table

output.yml: template.yml
	aws cloudformation package --template $< --s3-bucket $(DEPLOYMENT_BUCKET) --output-template-file $@

.PHONY: all
