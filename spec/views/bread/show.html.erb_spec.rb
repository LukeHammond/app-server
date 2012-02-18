require 'spec_helper'

describe "bread/show" do
  before(:each) do
    @bread = assign(:bread, stub_model(Bread,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
