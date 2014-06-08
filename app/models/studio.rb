class Studio < ActiveRecord::Base
	has_many :series
	has_many :anime
end
