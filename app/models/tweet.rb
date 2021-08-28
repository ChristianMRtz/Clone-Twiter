class Tweet < ApplicationRecord
  validates :body, presence: true, length: { maximum: 140 }

  belongs_to :user
  has_many :comments, dependent: :destroy
end
