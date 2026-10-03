output "application_name" {
  description = "Nombre de la aplicación desplegada"
  value       = var.application_name
}

output "project_name" {
  description = "Nombre del proyecto"
  value       = var.proyect_name
}

output "environment" {
  description = "Entorno de despliegue"
  value       = var.environment
}

output "unique_name" {
  description = "Nombre único generado combinando prefijo, entorno y sufijo aleatorio"
  value       = local.unique_name
}

output "random_string_result" {
  description = "Valor aleatorio generado como sufijo"
  value       = random_string.suffix.result
  sensitive   = true
}

output "region_and_location" {
  description = "Ubicación y región geográfica de los recursos"
  value = {
    region   = var.region
    location = var.location
  }
}

output "tags_summary" {
  description = "Resumen de etiquetas aplicadas a los recursos"
  value       = merge(var.tags, var.enviroment_tags)
}

output "network_configuration" {
  description = "Configuración de redes y espacios de direcciones"
  value = {
    allowed_networks  = var.allowed_networks
    vnet_adress_space = var.vnet_adress_space
  }
}

output "application_metadata" {
  description = "Metadatos y configuración específica de la aplicación"
  value       = var.aplication_config
}