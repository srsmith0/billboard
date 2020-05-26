class SongsController < ApplicationController
  before_action :set_artist

  def index
  end

  def new
    @song = @artist.songs.new 
    render partial: 'form'
  end

  def create
    @song = @artist.songs.new(song_params)
    if @song.save
      redirect_to artist_songs_path(@artist)
    else
      render partial: 'form'
    end
  end

  def show
  end

  def edit
    render :edit 
  end

  def destroy
    @song.destroy
    redirect_to artist_songs_path(@artist)
  end


  private
  def song_params
    params.require(:song).permit(:title, :artist_id)
  end

  def set_artist
    @artist = Artist.find(params[:artist_id])
  end


end
