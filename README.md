# Terraform AWS Tutorial

## Local Workflow

Running terraform with CLI on your local machine: 
	* the state is stored locally,
	* good for single user, not ok for collaboration


1. Initialisation

```bash
terraform init           # One off at the start of the project to download plugin
terraform fmt -recursive # Reformat files (indentation, etc...)    
terraform validate       # Validate configuration
```

2. Execution

```bash
terraform plan      # Only show the plan, save it with -out my-first-plan
terraform apply     # Show the plan and ask confirmation before execution
terraform output    # Query output variables in current state 
```

3. Termination

```bash
terraform destroy
```

## Remote Workflow

Running terraform in a remote environment where the state is shared with other programmers.

See [Terraform Cloud](https://app.terraform.io/) 


## Extra

Draw the graph

```bash
terraform graph | dot -Tsvg > graph.svg
```