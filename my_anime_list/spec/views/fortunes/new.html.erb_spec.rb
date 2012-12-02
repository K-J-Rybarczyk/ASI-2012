require 'spec_helper'

describe "fortunes/new" do
  before(:each) do
    assign(:fortune, stub_model(Fortune,
      :title => "MyString",
      :episodes => 1,
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new fortune form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => fortunes_path, :method => "post" do
      assert_select "input#fortune_title", :name => "fortune[title]"
      assert_select "input#fortune_episodes", :name => "fortune[episodes]"
      assert_select "textarea#fortune_description", :name => "fortune[description]"
    end
  end
end
