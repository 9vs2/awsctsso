data "aws_ssoadmin_instances" "users" {}

############################## Users,Group,Group's Membership #########################################
# Create SSO user1
resource "aws_identitystore_user" "user_resource" {
  identity_store_id = tolist(data.aws_ssoadmin_instances.users.identity_store_ids)[0]

  display_name = var.display_name
  user_name    = var.user_name

  name {
    given_name  = var.given_name
    family_name = var.family_name
  }

  emails {
    value = var.emails
  }
}

output "user_id" {
  value = aws_identitystore_user.user_resource.user_id
}