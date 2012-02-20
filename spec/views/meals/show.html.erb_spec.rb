require 'spec_helper'

describe "meals/show" do
  before(:each) do
    @meal = assign(:meal, stub_model(Meal,
      :wine_id => 1,
      :bread_id => 1,
      :cheese_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
