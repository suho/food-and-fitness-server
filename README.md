# Food And Fitness Server - DUT's Project

## Setup Development Environment

- `./scripts/install` - this script will install
- [Homebrew](https://github.com/Homebrew/brew) & necessary formulas
- [rbenv](https://github.com/rbenv/rbenv) & necessary gems
- [mysql](https://www.mysql.com) & project's dependences
- [rails](http://rubyonrails.org) & project's dependences

## Command For Build
- `rails server` - Start your server
- `rails routes` - Show all your routes
- `rails db:create` - Create Database
- `rails db:drop` - Drop Database
- `rails db:migrate` - Migrate your db
- `rails db:migrate:reset` - Reset and auto migrate db (delete all your records)
- `rails g controller [ControllerName] [Functions]` - Auto generate Controller
    - Example:
        ```script
            rails g controller Users index show create update destroy
        ```
- `rails g model [ModelName] [Properties]` - Auto generate Model
    - Example:
        ```script
            rails g Model User name:string age:int
        ```
### Extra:
-  `rails new [ProjectName] [--api] [-d] [mysql]` - Create Project
- `brew services start mysql` - Start MySQL
- `brew services stop mysql` - Stop MySQL
