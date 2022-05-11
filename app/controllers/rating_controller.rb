class RatingController < ApplicationController
	before_action :find_movie

	def new
		@rating = Rating.new
	end

	def rate
		@rating = Rating.new(rating_params)

		if @rating.save
			redirect_to root_path(@movie)
		else
			render 'new'
		end
	end

	private

		def rating_params
			params.require(:rating).permit(:rating)
		end

		def find_movie
			@movie = Movie.find(params[:movie.id])
		end
end
