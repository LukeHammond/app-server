require 'spec_helper'

describe "cheeses/edit" do
  before(:each) do
    @cheese = assign(:cheese, stub_model(Cheese,
      :name => "MyString"
    ))
  end

  it "renders the edit cheese form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cheeses_path(@cheese), :method => "post" do
      assert_select "input#cheese_name", :name => "cheese[name]"
    end
  end
end
