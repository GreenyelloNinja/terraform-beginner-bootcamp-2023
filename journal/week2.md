# Terraform Beginner Bootcamp 2023 - Week 2

## working with Ruby

## Bundler

Package mangager for Ruby. used to installed packages, known as gems, for ruby. 

#### Install gems

Gemfile nees to be created

```rb

source "https://rubygems.org"
gem 'sinatra'
gem 'rake'
gem 'pry'
gem 'puma'
gem 'activerecord'

```

Then run bundle install command
This installs the packages globally

Gemfile.lock will be creted

#### Executing ruby script in the contest of bundler

use 'bundle exec' to use gems

#### Sinatra

Sinatra is a micro-web framework for Ruby to build webapps

best for simple projects

https://sinatrarb.com/


## Terratowns Mock Server

### Running the web server

Run by executing th efollwoing: 

```rb

bundle install
bundle exec

```