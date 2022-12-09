require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module HotwireDemo
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0
    config.active_record.encryption.primary_key = "ZSKVcE3BabzJv7BGFFwI1MWKkFS3UNo0"
    config.active_record.encryption.deterministic_key = "RxV2A53DEONWMkThJZBeN55EEqRpKQxw"
    config.active_record.encryption.key_derivation_salt = "dQHyWMcNrLtoVfgrEDCmSmkOtyqeGFVG"


    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
