require 'spec_helper'

describe Wine do
  subject { FactoryGirl.build(:wine) }

  it { should have_many(:meals) }
end
