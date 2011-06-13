class SessionsController < ApplicationController
  def new
	  @title = "Login" 
  end

  def create
	  artist = Artist.authenticate(params[:session][:email],				params[:session][:password])
	  if artist.nil?
		  flash.now[:error] = ""
		  @title = "Login"
		  render 'new'
	  else
		  sign_in artist
		  redirect_to artist
	  end
  end

  def destroy
  end

end