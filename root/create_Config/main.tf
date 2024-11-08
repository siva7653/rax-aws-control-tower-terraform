variable "policy_name" {
  description = "The name of the AWS Organizations policy"
  type        = string
}
# 1. restricted-ssh (Restrict SSH Access)
resource "aws_config_config_rule" "restricted_ssh" {
  name        = var.policy_name
  description = "Ensure SSH access is restricted."
  source {
    owner             = "AWS"
    source_identifier = "INCOMING_SSH_DISABLED"
  }
}
