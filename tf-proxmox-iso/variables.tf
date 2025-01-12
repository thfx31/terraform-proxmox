variable "pm_api_token_id" {
  description = "ID du token API Proxmox"
  type        = string
  default     = null
}

variable "pm_api_token_secret" {
  description = "Secret du token API Proxmox"
  type        = string
  default     = null
}

variable "pm_api_url" {
  description = "URL de l'API Proxmox"
  type        = string
  default     = null
}

variable "vm_name" {
  description = "Le nom de la VM"
  type        = string
  default     = "Rocky-VM"
}

variable "target_node" {
  description = "Le nom du noeud Proxmox où déployer la VM"
  type        = string
  default     = "pve"
}

variable "template_name" {
  description = "Le nom du template à utiliser pour créer la VM"
  type        = string
  default     = "rocky-linux-template"
}

variable "cores" {
  description = "Le nombre de coeurs CPU"
  type        = number
  default     = "4"
}

variable "memory" {
  description = "La mémoire allouée à la VM (en Mo)"
  type        = number
  default     = "4096"
}

variable "disk_size" {
  description = "La taille du disque de la VM (en Go)"
  type        = string
  default     = "30"
}

variable "storage" {
  description = "Le stockage où placer le disque"
  type        = string
  default     = "local-lvm"
}

variable "iso_path" {
  description = "Le chemin de l'image ISO pour la VM"
  type        = string
  default     = "local:iso/Rocky-9.4-x86_64-minimal.iso"
}

variable "network_model" {
  description = "Le modèle réseau pour la VM"
  type        = string
  default     = "virtio"
}

variable "bridge" {
  description = "Le pont réseau utilisé par la VM"
  type        = string
  default     = "vmbr0"
}