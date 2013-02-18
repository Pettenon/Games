class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.integer :category_id
      t.integer :plataform
      t.date :release

      t.timestamps
    end
  end
end
