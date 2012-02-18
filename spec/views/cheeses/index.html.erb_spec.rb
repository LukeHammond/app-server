require 'spec_helper'

describe "cheeses/index" do
  before(:each) do
    assign(:cheeses, [
      stub_model(Cheese,
        :name => "Name"
      ),
      stub_model(Cheese,
        :name => "Name"
      )
    ])
  end

  it "renders a list of cheeses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
