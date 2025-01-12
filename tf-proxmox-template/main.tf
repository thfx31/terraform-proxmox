resource "proxmox_vm_qemu" "vmdeployed" {

  name        = "${var.vm_name_prefix}-${count.index + 1}"
  target_node = var.target_node
  clone       = var.template_name
  cores       = var.cores
  memory      = var.memory
 
  count       = var.vm_count
  vmid        = 600 + count.index

  disks {
    virtio {
      virtio0 {
        disk {
          size = var.disk_size
          storage = var.storage
        }
      }
    }
  }

  network {
    id = 1
    model = var.network_model
    bridge = var.bridge
  }
}