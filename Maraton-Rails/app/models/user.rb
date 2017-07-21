class User < ApplicationRecord
  has_many :games
  has_many :decks, through: :games
    # ej. User.authenticate('fernando@codea.mx', 'qwerty')
  validates :name, presence: true
  validates :password, presence: true
  validates :email, presence: true
end
