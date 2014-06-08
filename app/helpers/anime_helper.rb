module AnimeHelper
	include ActsAsTaggableOn::TagsHelper

	def feature_image?
		!@anime.feature_image.nil?
	end
end