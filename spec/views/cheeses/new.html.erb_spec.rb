require 'spec_helper'

describe "cheeses/new" do
  before(:each) do
    assign(:cheese, stub_model(Cheese,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new cheese form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cheeses_path, :method => "post" do
      assert_select "input#cheese_name", :name => "cheese[name]"
    end
  end
end
