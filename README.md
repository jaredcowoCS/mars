# README
## Getting Started

### Requirements
* Ruby Version >= 2.5.1
* Rails Version >= 6.0.0
* PostgreSQL

### Initial Setup

  * Ensure all requirements have been installed
  * Setup a Postgres Database
    - Create a Database
    - Run `rails db:create`
  * Seed the Database
  - Run `rails db:migrate`
  - Run `rails db:seed`

  * Install Gems
    - Run '`bundle install`

  * Start Rails Server `rails s`

## Testing
Automated Testing is a major part of Mars. Our test suite consists of integration, feature and units tests both on the front-end and the back-end. As a result before any changes/new features are integrated into the `master`  branch, they must be covered by tests and all existing tests must pass.

- `rspec spec` - Runs the Back-End suites

### Back-End

One the back-end, tests are written with [RSpec](https://github.com/rspec/rspec-rails).

## Deploying to Heroku

- Install Heroku CLI
  * Sign into Heroku [here](https://www.heroku.com/)
  * Install the (Heroku CLI)[https://devcenter.heroku.com/articles/heroku-cli]
  * Login by running `heroku login` in your computer's terminal
- Create Git remotes
  * Staging Remote: Run `git remote add staging https://git.heroku.com/mars-staging.git`
  * Prodution Remote: Run `git remote add mars https://git.heroku.com/mars.git`
- Deploy to Heroku
  * Staging: Run `git push staging master`
  * Production: Run `git push mars master`
- Run Heroku/Rails command by appending `heroku run` to your commands and specifying which app should be affected
  * Staging: Run `heroku run [heroku/rails command] -a staging`
  * Production: Run `heroku run [heroku/rails command] -a mars`
