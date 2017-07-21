class Stat < ApplicationRecord
  belongs_to :game
  belongs_to :answer
  belongs_to :question
  validates :correct, presence: true
end
