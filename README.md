# Deploy VMs with Terraform on your Proxmox server
&nbsp;

## 1 - Create Terraform User for Proxmox

```sh
pveum useradd terraform@pve -password PASSWORD
```
&nbsp;

## 2 - Create API Token
```sh
pveum user token add terraform@pve terraform --comment "Terraform API Token"
```
&nbsp;

## 3 - Create custom role
```sh
 pveum roleadd TerraformRole -privs "Datastore.AllocateSpace Datastore.AllocateTemplate Datastore.Audit Pool.Allocate Sys.Audit Sys.Console Sys.Modify VM.Allocate VM.Audit VM.Clone VM.Config.CDROM VM.Config.Cloudinit VM.Config.CPU VM.Config.Disk VM.Config.HWType VM.Config.Memory VM.Config.Network VM.Config.Options VM.Migrate VM.Monitor VM.PowerMgmt SDN.Use"
```
&nbsp;

## 4 - Set Terraform Role to user and token
```sh
pveum aclmod / -user terraform@pve -role TerraformRole
pveum aclmod / --roles TerraformRole --token 'terraform@pve!terraform' --propagate 1
```
&nbsp;
## 5 - Deploy your VMs

- [ISO](https://github.com/thfx31/terraform-proxmox/tree/main/tf-proxmox-iso)
- [Template](https://github.com/thfx31/terraform-proxmox/tree/main/tf-proxmox-template)
