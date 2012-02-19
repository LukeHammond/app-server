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