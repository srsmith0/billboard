class ArtistsController < ApplicationController
  before_action :set_artist, only: [:edit, :show, :destroy, :update]

  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
    render partial: 'form'
  end

  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      redirect_to artist_path
    else
      render partial: 'form'
    end
  end

  def show
    @songs = @artist.songs
    
  end

  def edit
    render partial: 'form'
  end

  def update
    if @artist.update(artist_params)
      redirect_to artist_path
    else
      render :edit
    end
  end


  def destroy
    @artist.destroy
    redirect_to artist_path
  end

  private

  def artist_params
    params.require(:artist).permit(:name)
  end

  def set_artist
    @artist = Artist.find(params[:id])
  end

end
