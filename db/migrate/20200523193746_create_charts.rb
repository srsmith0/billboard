class CreateCharts < ActiveRecord::Migration[6.0]
  def change
    create_table :charts do |t|
      t.string :topartist
      t.string :topsong

      t.timestamps
    end
  end
end
