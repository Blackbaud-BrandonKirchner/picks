require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Picks
  class Application < Rails::Application
    config.api_only = true

    config.middleware.insert_before 'Rack::Runtime', 'Rack::Cors' do
      allow do
        origins '*'
        resource '*',
            headers: :any,
            methods: [:get, :put, :push, :patch, :delete, :options]
      end
    end
  end
end
