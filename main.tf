module "group_ke_cdso" {
  source = "./main/Group/KE/CDSO"
}

module "group_ke_pss" {
  source = "./main/Group/KE/PSS"
}

module "user_ke_cdso" {
  source = "./main/User/KE/CDSO"
  depends_on = [
    module.group_ke_cdso
  ]
}

module "user_ke_pss" {
  source = "./main/User/KE/PSS"
  depends_on = [
    module.group_ke_pss
  ]
}