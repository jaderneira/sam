# create a s3 bucket
aws s3 mb s3://dean-code-sam-v1

# package cloudformation
aws cloudformation package  --template-file template.yaml  --s3-bucket dean-code-sam-v1  --output-template-file gen/template-generated.yaml

# deploy cloudformation
aws cloudformation deploy --template-file gen/template-generated.yaml --stack-name hello-world-sam --capabilities CAPABILITY_IAM