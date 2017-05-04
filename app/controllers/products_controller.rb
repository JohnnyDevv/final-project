class ProductsController < ApplicationController
  def new
  	@product = Product.new
  end

  def create
  	@product = Product.new(product_params)
  	@category = @product.category
  	if @product.save
      flash[:notice] = "#{@product.title} created"
      redirect_to category_path(@category)
    else
      render 'new'
    end    
  end	

   def destroy
    @product = Product.find(params[:id])
    @category = @product.category
    @product.destroy

    flash[:alert] = "#{@product.title} removed"

    redirect_to edit_category_path(@category)
  end

  private
  def product_params
    params.require(:product).permit(:picture, :category_id, :title, :description)
  end  
end
