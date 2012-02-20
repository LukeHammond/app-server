require 'spec_helper'

describe Bread do
  subject { FactoryGirl.build(:bread) }

  it { should have_many(:meals) }
end
