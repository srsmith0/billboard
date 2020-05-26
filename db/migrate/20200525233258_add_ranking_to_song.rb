class AddRankingToSong < ActiveRecord::Migration[6.0]
  def change
    add_column :songs, :ranking, :integer
  end
end
