class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.integer :certificate_id
      t.string :lead_cast
      t.string :director
      t.string :producer
      t.string :duration
      t.text :description
      t.string :small_image_url
      t.string :large_image_url

      t.timestamps
    end
  end
end
