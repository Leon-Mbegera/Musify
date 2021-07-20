class ArticlesController < ApplicationController
  before_action :authenticate_user!

  def index
    @articles = Article.all 
    @categories = Category.all
  end

  def new
    @article = Article.new
  end
end
