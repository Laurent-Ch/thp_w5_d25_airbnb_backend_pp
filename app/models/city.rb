class City < ApplicationRecord
  has_many :lodgments

  validates :zip_code,
  presence: true,
  uniqueness: true
  # Tmp: seed.
  # format: { with: /\A(([0-8][0-9])|(9[0-5])|(2[ab]))[0-9]{3}\z/, message: "please enter a valid french zip code" } 
end
