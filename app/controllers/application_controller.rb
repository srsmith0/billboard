class ApplicationController < ActionController::Base
  def chart_song
    @chart_song = [@song.find(:id).artist.name, @song.name, @ranking]
  end

  def chart_list
  @chartlist = [].push(@chart_song)
  end


end
