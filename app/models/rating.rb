class Rating < ApplicationRecord
	belongs_to :users
	belongs_to :movies

	after_save do
		unless rating.nil? || rating.zero?
			movie.update_rating
		end
	end

	after_destroy do
		movie.update_rating
	end
end
