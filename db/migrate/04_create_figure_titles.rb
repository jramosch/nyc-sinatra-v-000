class CreateFigureTitles < ActiveRecord::Migration[4.2]
  def change
    create_table :figure_titles do |t|
      t.integer :title_id
      t.integer :figure_id
      t.timestamps null: false
    end
  end
end