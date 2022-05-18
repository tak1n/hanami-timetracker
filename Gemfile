# frozen_string_literal: true

source "https://rubygems.org/"

# Core gems
gem "rake", "~> 13.0"

# Application framework
# gem "hanami", "~> 2.0.0.alpha"
gem "hanami", github: "hanami/hanami"
# gem "hanami", path: "../hanami"

# gem "hanami-cli", "~> 2.0.0.alpha"
gem "hanami-cli", github: "hanami/cli"

# gem "hanami-controller", "~> 2.0.0.alpha"
gem "hanami-controller", github: "hanami/controller"
# gem "hanami-controller", path: "../controller"

# gem "hanami-router", "~> 2.0.0.alpha"
gem "hanami-router", github: "hanami/router"

# gem "hanami-utils", "~> 2.0.0.alpha"
gem "hanami-utils", github: "hanami/utils"
# gem "hanami-utils", paht: "../utils"

# gem "hanami-view", "~> 2.0.0.alpha"
gem "hanami-view", github: "hanami/view"

gem "hanami-validations", github: "hanami/validations"

# HTTP
gem "down", "~> 5.1"
gem "puma", "~> 5.6"

# Database
gem "pg"
gem "rom", "~> 5.2"
gem "rom-sql", "~> 3.2"
gem "sequel", "~> 5.32"
gem "sqlite3"

# Application
gem "dry-configurable", "~> 0.13"
gem "dry-matcher", "~> 0.8"
gem "dry-monads", "~> 1.2"
gem "dry-struct", "~> 1.0"
gem "dry-transformer", "~> 0.1"
gem "dry-types", "~> 1.0"
gem "dry-validation", "~> 1.4"
gem "erbse", "~> 0.1"
gem "faker", "~> 2.20"
gem "i18n", "~> 1.8"
gem "slim", "~> 4.0"

gem "alba"
gem "oj"

# Development/test
group :development, :test do
  gem "break", "~> 0.21"
  gem "debug", "~> 1.5.0"
  gem "dotenv", "~> 2.7"
  gem "guard-rack", "~> 2.2"
  gem "pry"
  gem "pry-byebug"
  gem "standard"
end

# Test
group :test do
  gem "capybara", "~> 3.0"
  gem "capybara-screenshot", "~> 1.0"
  gem "cuprite", "~> 0.8"
  gem "database_cleaner-sequel", "~> 2.0"
  gem "puffing-billy", "~> 2.2"
  gem "rom-factory", "~> 0.10"
  gem "rspec", "~> 3.9"
  gem "simplecov", "~> 0.17"
end
