class Movie < ApplicationRecord
	has_many :ratings
	has_many :users, through: :ratings

	ratyrate_rateable 'rate'
	def update_rating
		if rating.any? && rating.where.not(rating: nil).any?
			update_column :average_rating, (rating.average(:rating).round(2).to_f)
		else
			update_column :average_rating, (0)
		end
	end
end
