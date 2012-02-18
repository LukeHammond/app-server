require 'spec_helper'

describe "wines/new" do
  before(:each) do
    assign(:wine, stub_model(Wine,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new wine form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => wines_path, :method => "post" do
      assert_select "input#wine_name", :name => "wine[name]"
    end
  end
end
