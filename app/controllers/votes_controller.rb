class VotesController < ApplicationController

  def create
    @vote = current_user.votes.build(article: params[:article_id])
    @vote.save
  end
end
