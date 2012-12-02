require 'spec_helper'

describe "fortunes/show" do
  before(:each) do
    @fortune = assign(:fortune, stub_model(Fortune,
      :title => "Title",
      :episodes => 1,
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/1/)
    rendered.should match(/MyText/)
  end
end
