class Url < ApplicationRecord
  before_create :convert_url

  validate :correct_url

  def correct_url
    if !self.long_url.start_with?("http://")
      errors.add(:long_url, "no comienza con http://")
    end
  end
  
  def convert_url
    abecedario = ("A".."Z").to_a + ("a".."z").to_a + (0..9).to_a
    short = abecedario.sample(6).join
    self.short_url = short
  end

end
