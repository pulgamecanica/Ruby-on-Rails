class Answer < ApplicationRecord
  belongs_to :question
  has_many :stats
  validates :name, presence: true
end
