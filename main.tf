module "user_ke_cdso" {
  source = "./main/User/KE/CDSO"
  depends_on = [
    module.group_ke_cdso
  ]
}