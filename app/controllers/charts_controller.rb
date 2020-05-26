class ChartsController < ApplicationController
  before_action :set_chart, only: [:show, :edit, :update, :destroy]
  
  def index
    @charts = Chart.all
    @artists = Artist.all
  end

  def new
    @chart = Chart.new
    render partial: 'form'
  end

  def create
    @chart = Chart.new(chart_params)
      if @chart.save
        redirect_to charts_path
      else
        render partial: 'form'
      end
  end

  def show
    @songs = @chart.songs
    @top = @songs.limit(10)
    #@top = @tophits.ranking.sort { |low, high| low <=> high }
  end

  def edit
    #@songs = Chart.songs.all
    render partial: 'form'
  end
  
  def update
  if @chart.update(chart_params)
    redirect_to chart_path 
  else
    render :edit
  end
  end

  def destroy
    @chart.destroy
    redirect_to charts_path
  end


  private
  def chart_params
    params.require(:chart).permit(:name)
  end

  def set_chart
    @chart = Chart.find(params[:id])
  end


end
