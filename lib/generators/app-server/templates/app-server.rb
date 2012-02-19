require 'app-server'

AppServer.setup do |config|
  if Rails.env.production?
    # Configs for production mode go here
  elsif Rails.env.development?
    # Configs for development mode go here
  end
end
