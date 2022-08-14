
variable "trigger" {
  description = "The trigger value for the `null_resource` resource in this module."
  default     = "world"
}
`
resource "null_resource" "resource" {
  triggers = {
    hello = var.trigger
  }
}

output "null_resource_id" {
  description = "The `id` of the `null_resource` resource in this module."
  value       = null_resource.resource.id
}