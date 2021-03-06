provider "heroku" {
  email   = var.heroku_email
  api_key = var.heroku_api_token
}

variable "app_name" {
  type        = string
  description = "The name of the heroku app provisioned"
}

variable "heroku_email" {
  type        = string
  description = "Heroku Login Email"
}

variable "heroku_api_token" {

}
resource "heroku_app" "my-app" {
  name   = var.app_name
  region = "us"
}

resource "heroku_addon" "database" {
  app  = heroku_app.my-app.name
  plan = "heroku-postgresql:hobby-basic"
}

resource "heroku_addon" "redis-db" {
  app  = heroku_app.my-app.name
  plan = "heroku-redis:hobby-dev"
}
