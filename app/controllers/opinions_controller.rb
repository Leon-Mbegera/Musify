class OpinionsController < ApplicationController

  def create
    @opinion = Opinion.new(opinion_params)
    @opinion.user = current_user
    @opinion.article = params[:id]

    if @opinion.save
      redirect_to articles_path, notice: 'Opinion placed!'
    else
      redirect_to articles_path, notice: 'Opinion could not be placed'
    end
  end

  private

  def opinion_params
    params.require(:opinion).permit(:content)
  end
end
