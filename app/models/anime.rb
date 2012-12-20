class Anime < ActiveRecord::Base
   # Make new anime fields form accessable
   attr_accessible :title, :synopsis, :year, :season, :airing_date, :airing_time, :media_type, :animation_studio
end
