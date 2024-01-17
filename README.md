# Jedi_Power
This repo consists of a json file which is being read by Terraform local module and then it is encrypted using AWS KMS keys and then hosted on Serverless AWS Lambda.
There are 4 files altogether.
One is the json file which has the data.
main.tf has the data extraction with output variables. This code is tested and it works fine. terraform init, plan and apply.
AWS CMK or openssl has the creation of keys and also has commmands to encrypt the file.
AWS Lambda handler has the lambda code to take the data and genrate output using python. This is a dummy code and I need Env to test it.
