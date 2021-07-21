class CategoriesController < ApplicationController
  before_action :authenticate_user!

  def new
    @category = Category.new
  end

  def show
    @category = Category.find_by(id: params[:id])
  end
end
