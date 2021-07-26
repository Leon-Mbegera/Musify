module ApplicationHelper

  def vote_btn(article)
    vote = Vote.find_by(article: article, user: current_user)
    if !vote
      button_to('vote', article_votes_path(article_id: article.id), method: 'POST')
    end
  end
end
