variable "container_name" {
  description = "Value of the name for the Docker container"
  # basic types include string, number and bool
  type        = string
  default     = "ExampleNginxContainer"
}

variable "internal_port" {
  description = "Value of the internal port"
  # basic types include string, number and bool
  type        = string
  default     = "80"
}

variable "external_port" {
  description = "Value of external port"
  # basic types include string, number and bool
  type        = string
  default     = "2224"
}
