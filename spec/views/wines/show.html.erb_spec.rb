require 'spec_helper'

describe "wines/show" do
  before(:each) do
    @wine = assign(:wine, stub_model(Wine,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
