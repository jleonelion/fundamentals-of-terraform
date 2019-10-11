locals {
  valid_envs = ["dev","qa","stage","prod"]
  validate_env = index(local.valid_envs,var.environment)
}