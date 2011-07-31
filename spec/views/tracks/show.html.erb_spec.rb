require 'spec_helper'

describe "tracks/show.html.erb" do
  before(:each) do
    @track = assign(:track, stub_model(Track))
  end

  it "renders attributes in <p>" do
    render
  end
end
