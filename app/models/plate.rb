class Plate
  extend ActiveModel::Callbacks

  CALLBACKS = [:clean]
  
  define_model_callbacks *CALLBACKS
  
  def clean
    puts "I am being scrubbed good and squeaky"
  end
end

Plate.class_eval do
  include AutoObserver::Observing if defined?(AutoObserver::Observing)
  include AutoObserver::Callbacks if defined?(AutoObserver::Callbacks)
end

  