class Article < ApplicationRecord

  validates :title, presence: true, length: { maximum: 50, 
                                      too_long: "Title can't exceed 50 characters long."}
  validates :body, presence: true, length: { maximum: 150, too_long: "Body can't exceed 150 characters long."}
  validates :image, presence: true
  validates :category_id, presence: true

  belongs_to :user
  belongs_to :category
  has_one_attached :image
  has_many :votes
  has_many :opinions
  scope :most_recent, -> { order(created_at: :desc)}
end
