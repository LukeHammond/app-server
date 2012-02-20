require 'spec_helper'

describe Meal do
  subject { FactoryGirl.build(:meal) }

  it { should belong_to(:wine) }
  it { should belong_to(:cheese) }
  it { should belong_to(:bread) }
end