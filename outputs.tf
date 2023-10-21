output "ssh-center" {
  value = "ssh ubuntu@${aws_instance.center.public_ip}"
}
