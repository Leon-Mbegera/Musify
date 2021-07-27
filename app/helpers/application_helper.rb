module ApplicationHelper
  def vote_btn(article)
    vote = Vote.find_by(article: article, user: current_user)
    button_to('vote', article_votes_path(article_id: article.id), method: 'POST') unless vote
  end

  def category_links
    Category.take(5)
  end
end
