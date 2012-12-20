class AdditionalAnimeFields < ActiveRecord::Migration
  def change
    change_table :anime do |t|
      t.string :season

      t.string :airing_date
      t.string :airing_time

      t.string :media_type
      t.string :animation_studio
    end
  end
end
