module "create-user-kyungtaekhong" {
  source = "../../../../modules/User"
  display_name = "kyungtaekhong@koreanair.com"
  user_name    = "Kyungtaekhong"
  given_name  = "Kyungtaek"
  family_name = "Hong"
  emails = "kyungtaekhong@koreanair.com"
}

module "attach-group-kyungtaekhong" {
  source = "../../../../modules/Membership"
  group_name = "GRP-CDSO-ADMIN"
  user_id = module.create-user-kyungtaekhong.user_id
}