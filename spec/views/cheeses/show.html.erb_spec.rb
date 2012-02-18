require 'spec_helper'

describe "cheeses/show" do
  before(:each) do
    @cheese = assign(:cheese, stub_model(Cheese,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
