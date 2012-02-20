require 'spec_helper'

describe Bread do
  subject { FactoryGirl.build(:bread) }

  it { should have_many(:meals) }
  it { should respond_to(:prepare) }
end
