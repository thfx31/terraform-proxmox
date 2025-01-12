resource "proxmox_vm_qemu" "vmdeployed" {

  name        = var.vm_name
  target_node = var.target_node
  cores       = var.cores
  memory      = var.memory

  disks {
    virtio {
      virtio0 {
        disk {
          size = var.disk_size
          storage = var.storage
        }
      }
    }
    ide {
      ide0 {
        cdrom {
          iso = var.iso_path
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