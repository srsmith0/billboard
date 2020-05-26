class RemoveTopsongAndTopartistFromCharts < ActiveRecord::Migration[6.0]
  def change
    remove_column :charts, :topartist, :string
    remove_column :charts, :topsong, :string
  end
end
