class Opinion < ApplicationRecord
  belongs_to :user
  belongs_to :article
  validates :content, presence: true, length: { maximum: 50, too_long: "Opinions can't exceed 50 characters"}
end
