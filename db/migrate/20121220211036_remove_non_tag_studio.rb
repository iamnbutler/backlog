class RemoveNonTagStudio < ActiveRecord::Migration
  def change
  	remove_column :anime, :animation_studio
  end
end
