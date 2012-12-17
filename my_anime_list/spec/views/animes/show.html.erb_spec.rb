require 'spec_helper'

describe "animes/show" do
  before(:each) do
    @anime = assign(:anime, stub_model(Anime,
      :user => "User",
      :title => "Title",
      :episodes => 1,
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/User/)
    rendered.should match(/Title/)
    rendered.should match(/1/)
    rendered.should match(/MyText/)
  end
end
