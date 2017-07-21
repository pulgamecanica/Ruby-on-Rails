class Question < ApplicationRecord
  has_many :answers
  has_many :stats
  belongs_to :deck
  validates :question, presence: true
end
