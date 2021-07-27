module ApplicationHelper

  def vote_btn(article)
    vote = Vote.find_by(article: article, user: current_user)
    if !vote
      button_to('vote', article_votes_path(article_id: article.id), method: 'POST')
    end
  end

  def category_links
    Category.take(5)
  end
end
