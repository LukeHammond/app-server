class Plate
  include AutoObserver

  auto_observer_callbacks :clean, :only => [:after, :before]


  def clean
    puts "I am being scrubbed good and squeaky"
  end

  include AutoObserver::AliasMethodBind
end
  