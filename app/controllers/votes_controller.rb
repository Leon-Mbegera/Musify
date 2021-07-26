class VotesController < ApplicationController

  def create
    @vote = current_user.votes.build(article_id: params[:article_id])
    @vote.save
    redirect_to arcticles_path
  end
end
