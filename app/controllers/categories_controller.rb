class CategoriesController < ApplicationController
  before_action :authenticate_user!

  def new
    @category = Category.new
  end

  def show
    @category = Category.find_by(id: params[:id])
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to new_article_path, notice: 'Your category has been created'
    else
      render :new, notice: 'Category creation failed'
    end
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
