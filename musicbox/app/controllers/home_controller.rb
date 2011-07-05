class HomeController < ApplicationController
  
  def index
    @title = "Home"
    @artists = Artist.paginate(:page => params[:page])
    @micropost = Micropost.new if artist_signed_in?
  end

  def about
     @title = "About"
  end
  def contact
  @title = "Contact"
  end

end
