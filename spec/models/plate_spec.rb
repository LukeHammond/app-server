require 'spec_helper'

describe Meal do
  before do
    class PlateObserver < ActiveModel::Observer
      def before_clean(plate)
        plate.before_visit << :before_clean
      end
    end

    class AnotherPlateObserver < ActiveModel::Observer
      observe :plate
      def before_clean(plate)
        plate.before_visit << :before_another_clean
      end
  
      def after_clean(plate)
        clean.after_visit << :after_another_clean
      end
    end

    Plate.observers = :plate_observer, :another_plate_observer
    Plate.instantiate_observers
  end
  
  subject { Plate.new }

  it "should trigger before observers and callbacks" do
    expect { subject.clean }.to change { subject.before_visit }.from([ ]).to([ :before_clean, :before_another_clean ])
  end
end