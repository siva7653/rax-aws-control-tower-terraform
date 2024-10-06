resource "aws_organizations_policy_attachment" "attach_custom_scp" {
  policy_id = "p-966ekd3w"  # Custom SCP ID
  target_id = "ou-zl72-rektquu3"  # Non Production OU ID
}

# resource "aws_organizations_policy_attachment" "attach_custom_scp_security" {
#   policy_id = "p-1a2b3c4d"  # Another Custom SCP ID
#   target_id = "ou-zl72-85iyjbk6"  # Security OU ID
# }
