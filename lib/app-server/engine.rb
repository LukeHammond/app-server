module AppServer
  class Engine < Rails::Engine
    config.after_initialize do 
      Dir[Rails.root.join('lib', 'model_extensions', '*.rb').to_s].each {|file| require file }
    end
  end
end
