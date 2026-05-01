# Create bucket for Terraform state
aws s3 mb s3://gha-project-bucket-42026 --region us-east-1

# Enable versioning for state history
aws s3api put-bucket-versioning \
  --bucket gha-project-bucket-42026 \
  --versioning-configuration Status=Enabled

# Enable encryption
aws s3api put-bucket-encryption \
  --bucket gha-project-bucket-42026 \
  --server-side-encryption-configuration '{
    "Rules": [{
      "ApplyServerSideEncryptionByDefault": {
        "SSEAlgorithm": "AES256"
      }
    }]
  }'
