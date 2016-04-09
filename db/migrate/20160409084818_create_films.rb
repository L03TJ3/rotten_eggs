class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.string :name
      t.text :description
      t.integer :rating
      t.string :link

      t.timestamps null: false
    end
  end
end
