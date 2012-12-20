class Anime < ActiveRecord::Base
	acts_as_taggable_on :tags, :studios

   # Make new anime fields form accessable
   attr_accessible :title, :synopsis, :year, :season, :airing_date, :airing_time, :media_type, :animation_studio, :tag_list, :studio_list
end
