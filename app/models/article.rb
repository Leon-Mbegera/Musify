class Article < ApplicationRecord

  validates :title, presence true, { maximum: 50, too_long: "Title can't exceed 50 characters long."}
  validates :body, presence true, { maximum: 150, too_long: "Body can't exceed 150 characters long."}
  validates :image, presence true
  validates :category_id, presence true
end
