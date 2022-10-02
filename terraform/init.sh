#

# S3 initialization
cd ./s3_bucket/ || return
terraform init&& terraform plan&& terraform apply -auto-approve
# infrastructure deploy
cd ../stage/ || return
terraform init -reconfigure -backend-config "access_key=YCAJEqMdp8vbHQ-Ds-gjwEaBs" -backend-config "secret_key=YCNIBYvhSYKSaAzeIeG-0uEOhQ_8UFKud3JYHcVF"
terraform workspace new stage
terraform init&& terraform plan&& terraform apply -auto-approve
