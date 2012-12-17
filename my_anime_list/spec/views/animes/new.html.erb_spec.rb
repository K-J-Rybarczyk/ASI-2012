require 'spec_helper'

describe "animes/new" do
  before(:each) do
    assign(:anime, stub_model(Anime,
      :user => "MyString",
      :title => "MyString",
      :episodes => 1,
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new anime form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => animes_path, :method => "post" do
      assert_select "input#anime_user", :name => "anime[user]"
      assert_select "input#anime_title", :name => "anime[title]"
      assert_select "input#anime_episodes", :name => "anime[episodes]"
      assert_select "textarea#anime_description", :name => "anime[description]"
    end
  end
end
