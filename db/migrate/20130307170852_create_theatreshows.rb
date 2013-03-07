class CreateTheatreshows < ActiveRecord::Migration
  def change
    create_table :theatreshows do |t|
      t.integer :theatre_id
      t.integer :show_id

      t.timestamps
    end
  end
end
