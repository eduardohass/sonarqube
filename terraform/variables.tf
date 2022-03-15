
variable "compute_instance_name" {
  description = "Nome da VM que será criado"
  type        = string
}

variable "image_name" {
  description = "Nome da imagem que será usada na compute engine"
  type        = string
}

variable "compute_instance_machine_type" {
  description = "Nome da VM que será criado"
  type        = string
}

variable "compute_instance_zone" {
  description = "Nome da zona onde a vm será criada"
  type        = string
}

variable "project_id" {
  description = "ID do projeto relacionado no GCP"
  type        = string
}

variable "credentials" {
  description = "Credenciais do GCP localizado no ambiente local para autenticação"
  type        = string
}

variable "region" {
  description = "Nome da região"
  type        = string
}

variable "gce_ssh_user" {
  description = "Nome do usuario ssh"
  type        = string
}

# variable "gce_ssh_private_key_file" {
#   description = "Caminho da chave privada ssh"
#   type        = string
# }

variable "gce_ssh_pub_key" {
  description = "Valor da chave pública"
  type        = string
}

variable "ingress_ip" {
  description = "IP de entrada/acesso"
  type        = string
}