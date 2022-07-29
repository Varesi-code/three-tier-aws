# three-tier-aws
### three tier deploy on aws using terraform


- define the variables and their types. NOT their values. --> /env/dev.tfvars
- initialise the dev workspace with "terraform workspace new dev" and then terraform init
- workspaces do not share state or specific resources. as ${workspace}.tfvars
- sooooooooo, whenever you run a command in this terraform config, you should use the flag in the cli
- e.g.     terraform validate --var-file=env/dev.tfvars
