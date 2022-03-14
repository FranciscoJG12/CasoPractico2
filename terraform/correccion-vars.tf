# Archivo donde tenemos datos para que se realice la correccion del Caso Practico 2.

variable "location" {
  type        = string
  description = "Región de Azure donde crearemos la infraestructura"
  default     = "East US"
}

variable "storage_account" {
  type        = string
  description = "Nombre para la storage account"
  default     = "staccountfjarrin"
}

variable "public_key_path" {
  type        = string
  description = "Ruta para la clave pública de acceso a las instancias"
  default     = "~/.ssh/id_rsa.pub" 
}

variable "ssh_user" {
  type        = string
  description = "Usuario para hacer ssh"
  default     = "adminUsername"
}
