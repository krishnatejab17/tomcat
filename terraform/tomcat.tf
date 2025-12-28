resource "null_resource" "tomcat_running" {
  provisioner "local-exec" {
    command = "sudo systemctl enable tomcat10 && sudo systemctl restart tomcat10"
  }
}
