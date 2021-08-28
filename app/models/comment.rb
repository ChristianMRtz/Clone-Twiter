class Comment < ApplicationRecord
  validates :body, presence: true, length: { maximum: 140 }
  belongs_to :tweet
end
