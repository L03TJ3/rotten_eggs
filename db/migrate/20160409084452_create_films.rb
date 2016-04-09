class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.string :name
      t.integer :id
      t.text :description
      t.string :link

      t.timestamps null: false
    end
  end
end
