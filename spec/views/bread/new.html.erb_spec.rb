require 'spec_helper'

describe "bread/new" do
  before(:each) do
    assign(:bread, stub_model(Bread,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new bread form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => breads_path, :method => "post" do
      assert_select "input#bread_name", :name => "bread[name]"
    end
  end
end
