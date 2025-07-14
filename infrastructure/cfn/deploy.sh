# deploy the certificate stack
aws cloudformation deploy \
  --stack-name hiredgnu-certificate \
  --template-file certificate.yml \
  --parameter-overrides file://certificate_parameters.json

# deploy the everything else stack
aws cloudformation deploy \
  --stack-name hiredgnu-s3-web \
  --template-file s3.yml \
  --parameter-overrides file://s3_parameters.json
