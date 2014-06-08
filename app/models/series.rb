class Series < ActiveRecord::Base
	has_many :anime
	has_many :studios
end
