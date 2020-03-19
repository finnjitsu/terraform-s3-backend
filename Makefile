terraform-backend:
	cd terraform && \
		rm -rf .terraform && \
		terraform init -backend-config=backend.tfvars && \
		terraform plan -var-file=backend.tfvars && \
		terraform apply -var-file=backend.tfvars