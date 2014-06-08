module StudiosHelper
	def anime_studio?
		!@anime.studio.nil?
	end

	def series_studio?
		!@series.studio.nil?
	end
end
