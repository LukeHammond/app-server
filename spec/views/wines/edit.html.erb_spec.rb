require 'spec_helper'

describe "wines/edit" do
  before(:each) do
    @wine = assign(:wine, stub_model(Wine,
      :name => "MyString"
    ))
  end

  it "renders the edit wine form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => wines_path(@wine), :method => "post" do
      assert_select "input#wine_name", :name => "wine[name]"
    end
  end
end
