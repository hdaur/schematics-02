# Create an arbitrary local resource

data "template_file" "test" {
  template = "Hello, I am a template. My variables are [1] $${samplevar1} [2] $${samplevar2}."

  vars {
    samplevar1 = "${var.myparm}"
    samplevar2 = "${var.myparm_sensitive}"
  }
}

resource "null_resource" "sleep" {
  triggers {
    uuid = "${uuid()}"
  }

  provisioner "local-exec" {
    command = "sleep ${var.sleeptime}"
  }
}