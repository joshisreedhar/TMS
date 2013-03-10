class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.integer :theatre_id
      t.integer :showtime_id
      t.integer :movie_id
      t.decimal :ticketprice

      t.timestamps
    end
  end
end
