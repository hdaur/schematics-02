output "P1" { value = "${var.myparm}" }
output "P2" { value = "${var.myparm_sensitive}" }
output "P3" { value = "${var.sleeptime}" }

output "rendered_template" {
  value = "${data.template_file.test.rendered}"
}
