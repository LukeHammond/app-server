require 'spec_helper'

describe "meals/edit" do
  before(:each) do
    @meal = assign(:meal, stub_model(Meal,
      :wine_id => 1,
      :bread_id => 1,
      :cheese_id => 1
    ))
  end

  it "renders the edit meal form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => meals_path(@meal), :method => "post" do
      assert_select "input#meal_wine_id", :name => "meal[wine_id]"
      assert_select "input#meal_bread_id", :name => "meal[bread_id]"
      assert_select "input#meal_cheese_id", :name => "meal[cheese_id]"
    end
  end
end
