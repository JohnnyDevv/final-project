class ProductsController < ApplicationController
  before_action  :require_admin
  
  def who_bought
    @product = Product.find(params[:id])
    @latest_order = @product.orders.order(:updated_at).last
    if stale?(@latest_order)
      respond_to do |format|
        format.atom
      end
    end
  end

  def new
  	@product = Product.new
  end

  def edit
    @product = Product.find(params[:id])
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

  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product,
          notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      
        @products = Product.all
        ActionCable.server.broadcast 'products',
          html: render_to_string('category/show', layout: false)
      else
        format.html { render :edit }
        format.json { render json: @product.errors,
          status: :unprocessable_entity }
      end
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
    params.require(:product).permit(:picture, :category_id, :title, :description, :price)
  end  
end
