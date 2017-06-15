class ApplicationController < ActionController::Base
	#before_action :configure_permitted_parameters, if: :devise_controller?
	before_action :getCategoryNav, :getProducts, :getArticles
  protect_from_forgery with: :exception

   def ask_bot
    reaction = BOT.get_reaction(params[:query])
    render json: { response: reaction.present? ? reaction : "I don't have an answer to that"  }
  end

  private
  def getCategoryNav
  	@categoryNav = Category.all
  end

  #def getCategory
    #@categoryac = Category.find(params[:id])
  #end

  def getProducts
    @all_products = Product.order(created_at: :asc).last(4)
  end  

  def getArticles
    @all_articles = Article.order(created_at: :asc).last(3)
  end

  def require_admin
    redirect_to '/ ' unless current_user.admin
  end  
end
