require 'spec_helper'

describe "bread/index" do
  before(:each) do
    assign(:bread, [
      stub_model(Bread,
        :name => "Name"
      ),
      stub_model(Bread,
        :name => "Name"
      )
    ])
  end

  it "renders a list of bread" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
