#

# S3 initialization
cd ./s3_bucket/ || return
terraform init&& terraform plan&& terraform apply -auto-approve
# infrastructure deployment
#cd ../stage/ || return
#terraform init -reconfigure -backend-config "access_key=$YC_STORAGE_ACCESS_KEY" -backend-config "secret_key=$YC_STORAGE_SECRET_KEY"
#terraform workspace new stage
#terraform init&& terraform plan&& terraform apply -auto-approve

