class Plate

  CALLBACKS = [:clean]

  def clean
    puts "I am being scrubbed good and squeaky"
  end

  include AutoObserver
end
  