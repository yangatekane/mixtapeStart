class MicropostsController < ApplicationController
	before_filter :authenticate_artist!, :only => [:create, :destroy ]
	
	def new
		@title = "Comment"
		@micropost = Micropost.new
		#@feed_items = current_artist.feed.paginate(:page => params[:page])
	end

	def create
		@title = "Comment"
		#@artist = find(params[:id]
		@micropost = current_artist.microposts.build(params[:micropost])

		if @micropost.save
			redirect_to microposts_path, :notice => 'Thank you for your comment!'
			#flash[:success] = "Comment created!"
			#redirect_to root_path
		else
			#@feed_items = []
			render :new
		end
	end

	def destroy
	end
end
