class User < ApplicationRecord

  validates :name, presence: true, length: { maximum: 25 }
end
