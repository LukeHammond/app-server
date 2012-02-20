require 'spec_helper'

describe "meals/new" do
  before(:each) do
    assign(:meal, stub_model(Meal,
      :wine_id => 1,
      :bread_id => 1,
      :cheese_id => 1
    ).as_new_record)
  end

  it "renders new meal form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => meals_path, :method => "post" do
      assert_select "input#meal_wine_id", :name => "meal[wine_id]"
      assert_select "input#meal_bread_id", :name => "meal[bread_id]"
      assert_select "input#meal_cheese_id", :name => "meal[cheese_id]"
    end
  end
end
