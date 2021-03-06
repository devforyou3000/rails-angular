require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module JobViewAdd
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    #Allow Devise to respond with JSON (for angular devise)
    config.assets.initialize_on_precompile = false
   	config.to_prepare do
    	DeviseController.respond_to :html, :json
   	end
  end
end
