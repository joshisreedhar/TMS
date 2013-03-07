class CreateTheatres < ActiveRecord::Migration
  def change
    create_table :theatres do |t|
      t.string :name
      t.string :imageurl
      t.text :address

      t.timestamps
    end
  end
end
