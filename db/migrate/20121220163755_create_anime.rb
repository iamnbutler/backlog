class CreateAnime < ActiveRecord::Migration
  def change
    create_table :anime do |t|
      t.string :title
      t.text :synopsis
      t.integer :year

      t.timestamps
    end
  end
end
