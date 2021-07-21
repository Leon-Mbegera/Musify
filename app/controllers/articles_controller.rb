class ArticlesController < ApplicationController
  before_action :authenticate_user!

  def index
    @articles = Article.all 
    @category = Category.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = current_user.articles.build(article_params)
    if @article.image.nil?
      @article.image = 'default.jpg'
    end

    if @article.save
      redirect_to article_path(@article_id), notice: 'Your article has been created!'
    else
      render :new, notice: 'Article creation failed!'
    end
  end

  private

  def article_params
    params.require(:article).permit(:category_id, :title, :body, :image)
  end
end
