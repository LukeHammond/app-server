require 'spec_helper'

describe Cheese do
  subject { FactoryGirl.build(:cheese) }

  it { should have_many(:meals) }
end
