* Prepare S3
* Prepare TFC's org and workspace (CLI-Driven Workflow)
* First `terraform apply` and store state on S3
* Replace the `terraform` stanza to backend as `remote`
* Specify Org and Workspace
* And then `terraform init -migrate-state`
* `terraform destroy`
* View the TFC's UI State