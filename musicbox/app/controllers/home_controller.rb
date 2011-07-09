class HomeController < ApplicationController
  
  def index
    @title = "Home"
    @title1 = "Comment"
  end

  def about
     @title = "About"
  end
  def contact
  @title = "Contact"
  end

end
