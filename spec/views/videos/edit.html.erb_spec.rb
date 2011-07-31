require 'spec_helper'

describe "videos/edit.html.erb" do
  before(:each) do
    @video = assign(:video, stub_model(Video,
      :new_record? => false
    ))
  end

  it "renders the edit video form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => video_path(@video), :method => "post" do
    end
  end
end
