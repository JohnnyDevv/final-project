class CategoriesController < ApplicationController
	include CurrentCart
	before_action  :require_admin, except: [:show]
	before_action :set_cart
	def create
		@category = Category.new(category_params)
	   
   	if @category.save
   	  	flash[:notice] = '#{@category.name} category got created'
   	  	redirect_to root_url
   	else
   		render 'new'
   	end			   		
	end	

	def new
		@category = Category.new
	end	

	def edit
		@category = Category.find(params[:id])
		@products = @category.products
	end	

	def update
		@category = Category.find(params{:id})

		if @category.update(category_params)
			flash[:notice] = '#{@category.name} category updated'
			redirect_to root_url
		else
			render 'edit'
		end		
	end

	def show
		@category = Category.find(params[:id])
		@products = @category.products.order('created_at DESC')
		#@product = @category.product
	end	

	def destroy
		@category = Category.find(params[:id])
		@category.destroy
		@category.id = nil
		redirect_to root_url
	end

	private
		def category_params
			params.require(:category).permit(:name)
		end	
end
