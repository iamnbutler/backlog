class AnimeAssociations < ActiveRecord::Migration
  def change
  	add_column :anime, :series_id, :integer
  	add_column :anime, :studio_id, :integer

  	add_index :anime, :series_id
  	add_index :anime, :studio_id
  end
end
