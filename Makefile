terraform-backend:
	cd terraform
	rm -rf .terraform
	terraform init 
	terraform plan -var-file=backend.tfvars
	terraform apply