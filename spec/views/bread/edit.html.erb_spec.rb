require 'spec_helper'

describe "bread/edit" do
  before(:each) do
    @bread = assign(:bread, stub_model(Bread,
      :name => "MyString"
    ))
  end

  it "renders the edit bread form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => bread_path(@bread), :method => "post" do
      assert_select "input#bread_name", :name => "bread[name]"
    end
  end
end
