class TracksController < ApplicationController
  # GET /tracks
  # GET /tracks.xml
  def index
    @tracks = Track.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tracks }
    end
  end

  # GET /tracks/1
  # GET /tracks/1.xml
  def show
    @track = Track.find(params[:id])
<<<<<<< HEAD
    @micropost = Micropost.new
    @artists = Artist.all
    @posts = Micropost.all
    @feed_items = @posts.paginate(:page => params[:page])
=======
   
    @artists = Artist.all

   	@comments = @track.comments.paginate(:page =>params[:page])
    
>>>>>>> eb2b69e19f0aba86f85859414b8a6260d7286162
    

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @track }
    end
  end

  # GET /tracks/new
  # GET /tracks/new.xml
  def new
    @track = Track.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @track }
    end
  end

  # GET /tracks/1/edit
  def edit
    @track = Track.find(params[:id])
  end

  # POST /tracks
  # POST /tracks.xml
  def create
    @artist = current_artist
    @track = @artist.tracks.build(params[:track])
  #  @track = Track.new(params[:track])

    respond_to do |format|
      if @track.save
        format.html { redirect_to(@track, :notice => 'Track was successfully created.') }
        format.xml  { render :xml => @track, :status => :created, :location => @track }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @track.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tracks/1
  # PUT /tracks/1.xml
  def update
    @track = Track.find(params[:id])

    respond_to do |format|
      if @track.update_attributes(params[:track])
        format.html { redirect_to(@track, :notice => 'Track was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @track.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tracks/1
  # DELETE /tracks/1.xml
  def destroy
    @track = Track.find(params[:id])
    @track.destroy

    respond_to do |format|
      format.html { redirect_to(tracks_url) }
      format.xml  { head :ok }
    end
  end
<<<<<<< HEAD
end
=======
  
  
 def personal_tracks 
 	@artist = Artist.find(params[:id])
 	end
 	
 	def create_comment
 		@track = Track.find(params[:id])
 		
 		
  if @track.comments.create(:comment =>params[:comment],:artist_id =>current_artist.id)
       
  	   @comments = @track.comments.paginate(:page =>params[:page])
 	   render 'show'	
 		else
 			#must do something when cant create comment
 end
 		
 		end
 		
 		
 def download
 	
  send_file "#{RAILS_ROOT}/public/tracks/#{params[:track]}",:type =>'audio/mp3',:filename =>"www.mculobox.com.mp3"
  #note must do something after sending the file:
   #it does send the file but stops the song...
 
end
 	
end


>>>>>>> eb2b69e19f0aba86f85859414b8a6260d7286162
