require 'spec_helper'

describe "fortunes/edit" do
  before(:each) do
    @fortune = assign(:fortune, stub_model(Fortune,
      :title => "MyString",
      :episodes => 1,
      :description => "MyText"
    ))
  end

  it "renders the edit fortune form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => fortunes_path(@fortune), :method => "post" do
      assert_select "input#fortune_title", :name => "fortune[title]"
      assert_select "input#fortune_episodes", :name => "fortune[episodes]"
      assert_select "textarea#fortune_description", :name => "fortune[description]"
    end
  end
end
