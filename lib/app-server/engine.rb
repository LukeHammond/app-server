module AppServer
  class Engine < Rails::Engine
    config.after_initialize do
      # After rails has been initialized require all the model_extensions that will be used to augment the models
      # define in the gem 
      Dir[Rails.root.join('lib', 'model_extensions', '*.rb').to_s].each {|file| require file }
    end
  end
end
