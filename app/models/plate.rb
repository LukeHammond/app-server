class Plate
  include AutoObserver
  attr_accessor :before_visit, :after_visit

  auto_observer_callbacks :clean, :only => [:after, :before]


  def clean
    puts "I am being scrubbed good and squeaky"
  end

  def before_visit
    @before_visit ||= [ ]
  end

  def after_visit
    @after_visit ||= [ ]
  end

  include AutoObserver::AliasMethodBind
end
  