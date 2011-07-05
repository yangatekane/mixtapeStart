class MicropostsController < ApplicationController
	before_filter :authenticate_artist!, :only => [:create, :destroy ]

	def create
		@micropost = current_artist.microposts.build(params[:micropost])
		if @micropost.save
			flash[:success] = "Comment created!"
			redirect_to root_path
		else
			render "home/index"
		end
	end

	def destroy
	end
end
