source "https://rubygems.org"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.2.0"
gem "sprockets-rails" # The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem "sqlite3", ">= 1.4" # Use sqlite3 as the database for Active Record
gem "puma", ">= 5.0" # Use the Puma web server [https://github.com/puma/puma]
gem "sass-rails", ">= 6"
gem "sassc-rails"
gem "activestorage", "~> 7.2.0"
gem "mini_magick"
gem "image_processing", "~> 1.2"
gem "active_storage_validations"
gem "tzinfo-data", platforms: %i[ windows jruby ]
gem "bootsnap", require: false

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"

  # Static analysis for security vulnerabilities [https://brakemanscanner.org/]
  gem "brakeman", require: false

  # Omakase Ruby styling [https://github.com/rails/rubocop-rails-omakase/]
  gem "rubocop-rails-omakase", require: false
end

# Add these lines

group :development do
  gem "web-console"
end