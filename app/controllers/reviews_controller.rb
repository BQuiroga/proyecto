class ReviewsController < ApplicationController
	def create
	 	@review = Reviews.new(reviews_params)
	 	if @review.save
	 		redirect_to "/posts/"+@review.posts.id.to_s, notice: "Comentario creada exitosamente"
	 	else
	 		redirect_to "/posts/"+@review.posts.id.to_s, notice: "Error al crear Comentario"
	 	end
	end

	def reviews_params
		params.require(:review).permit(:rev,:post_id)
	end
end
