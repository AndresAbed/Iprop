require File.expand_path('../boot', __FILE__)

require 'csv'
require 'rails/all'
require 'nokogiri'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Iprop
  class Application < Rails::Application
    config.time_zone = 'Buenos Aires'
    config.active_record.raise_in_transactional_callbacks = true
  end
end
