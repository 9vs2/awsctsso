module "create-user-ssotester" {
  source = "../../../../modules/User"
  display_name = "ssotester@koreanair.com"
  user_name    = "ssotester"
  given_name  = "ssotester"
  family_name = "ssotester"
  emails = "ssotester@koreanair.com"
}
