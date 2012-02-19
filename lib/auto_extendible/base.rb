# The purpose of this module is to provide a mechanism for additional functionality
# to be added to a model defined within the engine

# To use, flag the model in the engine as auto_extendible

# class Wine < ActiveRecord::Base
#   auto_extendible
# end

# Within the app that hosts the engine create a directory under the lib directory
# called module_extensions. Then create a module using this example as a template

# module ModelExtensions
#   module Wine
#     extend ActiveSupport::Concern
# 
#     included do
# 
#       has_one :cheese, :as => :api
#     end
#     
#     module InstanceMethods
#       def poor
#         puts "glug glug glug"
#       end
#     end
#     
#     module ClassMethods
#       def label
#         puts "fancy label"
#       end
#     end
#   end
# end



module AppServer
  module AutoExtendible

    ## Define ModelMethods
    module Base
      def self.included(klass)
        klass.class_eval do
          extend Config
        end
      end
      
      module Config
        def auto_extendible
          mod =  ModelExtensions.const_get(self.name) rescue nil
          self.send(:include, mod) if mod.present?
        end
      end
    end

  end
end

::ActiveRecord::Base.send :include, AppServer::AutoExtendible::Base