class DescriptionsController < ApplicationController
	def create
		product = Product.find(params[:product_id])
		product.descriptions.create(params[:description])
		redirect_to product
	end 
end
