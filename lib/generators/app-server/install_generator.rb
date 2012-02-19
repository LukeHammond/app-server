require 'rails/generators'
require 'rails/generators/migration'

module AppServer
  module Generators
    class InstallGenerator < Rails::Generators::Base
      include Rails::Generators::Migration

      desc 'Generates the app-server initializer'

      def self.source_root
        File.join(File.dirname(__FILE__), 'templates')
      end

      def copy_initializer
        template 'app-server.rb', 'config/initializers/app-server.rb'
      end

    end
  end
end
