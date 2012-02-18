require 'spec_helper'

describe "wines/index" do
  before(:each) do
    assign(:wines, [
      stub_model(Wine,
        :name => "Name"
      ),
      stub_model(Wine,
        :name => "Name"
      )
    ])
  end

  it "renders a list of wines" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
