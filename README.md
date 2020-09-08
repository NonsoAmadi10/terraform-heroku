# :construction: terraform-heroku :construction_worker:

- A simple configuration using terraform to provision heroku and its resources

## Prerequisites

- Terraform
- Heroku CLI

## Getting Started 

- Create an account on heroku

- Log in using the heroku cli 
    ` heroku login `

- Create an authorization token 
    - ` heroku authoriaztions:create --description <name of your app> `

- Export the token and email variable 

    - ` export HEROKU_API_KEY = <token created> `
    - ` export HEROKU_EMAIL = <your heroku email account>`

- Alternatively, you can create a <terraform.tfvars> file and save using:
    - `heroku_email` and 
    - `heroku_api_token`

- Finally, Set the app name in the <terraform.tfvars> file using ` appname=<any-heroku-name-of-your-choice>`


## Running the Config

- Clone this repo and enter the directory

- Fetch the heroku provider
   - Run `terraform init` 

- Check for any potential error in the configuration
    - Run `terraform plan`

- Provision the heroku infrastructure based on your configuration settings

    - Run `terraform apply`
