class Anime < ActiveRecord::Base
	belongs_to :series
	belongs_to :studio
end
