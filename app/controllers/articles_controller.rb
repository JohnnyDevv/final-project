class ArticlesController < ApplicationController
	 def index
  	@articles = Article.all
  	#@comments = @articles.comments
  end

  def new
  	@article = Article.new
  end
 
  def create
  	@article = Article.new(article_params)
  	if @article.save
  		flash[:success] = "Article was successfully created"
  		redirect_to articles_path
  	else
  		render 'new'
  	end		
  end	

  def edit
  	@article = Article.find(params[:id])
  end

  def update
  	@article = Article.find(params[:id])
  	if @article.update
  		flash[:success] = "Article was successfully updated"
  		redirect_to article_path(@article)
  	else
  		render 'edit'
  	end		
  end	

  def show
    @article = Article.find(params[:id])
  end

  def destroy
  	@article = Article.find(params[:id])
  	@article.destroy
  	redirect_to articles_path
  end

  private
  	def article_params
  		params.require(:article).permit(:title, :body, :picture, :video)
  	end
end
