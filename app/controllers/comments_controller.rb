class CommentsController < ApplicationController
	def create
		product = Product.find(params[:product_id])
		comment = Comment.new(params[:comment])
		comment.user = current_user
		product.comments.push(comment)

		redirect_to product
	end 
end
