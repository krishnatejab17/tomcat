resource "null_resource" "deploy_app" {

  provisioner "local-exec" {
    command = <<EOT
rm -rf /tmp/demo
mkdir -p /tmp/demo
echo "<h1>Hello from Terraform + Tomcat 🚀</h1>" > /tmp/demo/index.html
cd /tmp/demo
jar -cvf demo.war *
sudo cp demo.war /var/lib/tomcat10/webapps/demo.war
sudo chown tomcat:tomcat /var/lib/tomcat10/webapps/demo.war
EOT
  }

  depends_on = [null_resource.tomcat_running]
}