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
  default     = "Ubuntu-VM"
}

variable "vmid_base" {
  description = "Base de départ pour les identifiants des VMs"
  type        = number
  default     = 500
}

variable "vm_count" {
  description = "Nombre de VMs à déployer"
  default     = 4
}

variable "vm_name_prefix" {
  description = "Préfixe pour les noms de VM"
  default     = "Ubuntu-VM"
}

variable "target_node" {
  description = "Le nom du noeud Proxmox où déployer la VM"
  type        = string
  default     = "pve"
}

variable "template_name" {
  description = "Le nom du template à utiliser pour créer la VM"
  type        = string
  default     = "Ubuntu2404-template"
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
  default     = "32"
}

variable "storage" {
  description = "Le stockage où placer le disque"
  type        = string
  default     = "local-lvm"
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