class VotesController < ApplicationController

  def create
    article = Article.find(params[:article_id])
    @vote = current_user.votes.build(article_id: article.id)
    @vote.save
    redirect_back fallback_location: article
  end
end
