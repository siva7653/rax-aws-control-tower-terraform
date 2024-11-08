# 1. restricted-ssh (Restrict SSH Access)
resource "aws_config_config_rule" "restricted_ssh" {
  name        = "rax-restricted-ssh"
  description = "Ensure SSH access is restricted."
  source {
    owner             = "AWS"
    source_identifier = "INCOMING_SSH_DISABLED"
  }
}
