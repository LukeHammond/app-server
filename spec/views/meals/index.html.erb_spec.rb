require 'spec_helper'

describe "meals/index" do
  before(:each) do
    assign(:meals, [
      stub_model(Meal,
        :wine_id => 1,
        :bread_id => 1,
        :cheese_id => 1
      ),
      stub_model(Meal,
        :wine_id => 1,
        :bread_id => 1,
        :cheese_id => 1
      )
    ])
  end

  it "renders a list of meals" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 6
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 6
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 6
  end
end
