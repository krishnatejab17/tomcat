resource "null_resource" "restart_tomcat" {

  provisioner "local-exec" {
    command = "sudo systemctl restart tomcat10"
  }

  depends_on = [null_resource.deploy_app]
}
