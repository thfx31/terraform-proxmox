# Deploy VM with Terraform from template
&nbsp;

## 1 - Set your Proxmox API variables in bashrc file

Example :
```sh
export PM_API_TOKEN_ID='terraform@pve!terraform'
export PM_API_TOKEN_SECRET="aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee"
export PM_API_URL="https://proxmox-serveur:8006/api2/json"
```

&nbsp;
## 2 - Source your bashrc file

```sh
source ~/.bashrc
```
&nbsp;

## 3 - Adapt variables in variables.tf
Example for used template :
```hcl
variable "iso_path" {
  description = "Le chemin de l'image ISO pour la VM"
  type        = string
  default     = "local:iso/ubuntu-24.04-live-server-amd64.iso"
}
```
&nbsp;

## 4 - Deploy your VMs
```sh
terraform init
terraform plan
terraform apply
terraform destroy
```
&nbsp;

## 5 - Overriding variables (optional)
You can also create terraform.tfvars to override variables

Example : 
```hcl
vm_name       = "Rocky-VM"
target_node   = "pve01"
template_name = "Rocky-Template"
iso_path      = "local:iso/Rocky-9.4-x86_64-minimal.iso"
cores         = 4
memory        = 4096
disk_size     = "30G"
storage       = "local-lvm"
network_model = "virtio"
bridge        = "vmbr0"
```
