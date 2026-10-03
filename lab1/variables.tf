variable "length" {
  description = "The length of the string"
  type        = number
  default     = 30
}

variable "application_name" {
  description = "Nombre de la aplicación"
  type        = string
  default     = "Integradora"
}


variable "environment" {
  description = "Entorno de la aplicación"
  type        = string
  default     = "dev"
}

# otros tipos de variables pueden ser list, map, bool, etc. Por ejemplo:
variable "tags" {
    description = "Etiquetas para los recursos"
    type        = map(string)
    default     = {
        "Owner"       = "Monse"
        "Environment" = "dev"
    }
    }

variable "region" {
    description = "Región donde se despliegan los recursos"
    type        = string
    default     = "us-west-1"
}

variable "enviroment_tags" {
    description = "Etiquetas específicas del entorno"
    type        = map(string)
    default     = {
        "Environment" = "dev"
        "Project"     = "lab1"
    }
}

variable "aplication_config" {
    description = "Configuración específica de la aplicación"
    type        = map(string)
    default     = {
        "version" = "1.0.0"
        "owner"   = "Monse"
    }
}

variable "allowed_networks" {
    description = "Redes permitidas para acceder a la aplicación"
    type        = list(string)
    default     = ["10.0.0.0/8", "172.16.0.0/12"]
}

variable "vnet_adress_space" {
    description = "Espacio de direcciones para la red virtual"
    type        = list(string)
    default     = ["10.0.0.0/16"]
}

variable "location" {
    description = "Ubicación geográfica para los recursos"
    type        = string
    default     = "mexicocentral"
}   

variable "proyect_name" {
    description = "Nombre del proyecto"
    type        = string
    default     = "integradora"
}

