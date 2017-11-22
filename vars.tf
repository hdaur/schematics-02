# Configure these variables

variable "myparm" {
  description = "A parameter to pass some text to the template."
  default = "The Default Hello"
}

variable "myparm_sensitive" {
  description = "A parameter that contains sensitive info such as password. There is no default for this variable."
}
  
variable "sleeptime" {
  description = "Time in seconds for the local-exec provisioner to sleep."
  default = 10
}