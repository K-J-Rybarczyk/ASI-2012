require 'spec_helper'

describe "animes/edit" do
  before(:each) do
    @anime = assign(:anime, stub_model(Anime,
      :title => "MyString",
      :episodes => 1,
      :description => "MyText"
    ))
  end

  it "renders the edit anime form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => animes_path(@anime), :method => "post" do
      assert_select "input#anime_title", :name => "anime[title]"
      assert_select "input#anime_episodes", :name => "anime[episodes]"
      assert_select "textarea#anime_description", :name => "anime[description]"
    end
  end
end
