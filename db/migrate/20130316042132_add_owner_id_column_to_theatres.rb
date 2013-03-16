class AddOwnerIdColumnToTheatres < ActiveRecord::Migration
  def change
    add_column :theatres, :owner_id, :int
  end
end
