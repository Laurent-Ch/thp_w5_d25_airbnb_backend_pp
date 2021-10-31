class Lodgment < ApplicationRecord
  belongs_to :city
  belongs_to :owner, class_name: "User"

  has_many :reservations, foreign_key: 'rented_lodgment_id'
  has_many :guests, class_name: "User", through: :reservations

  validates :beds_nb,
  presence: true,
  numericality: { greater_than: 0 }

  validates :price,
  presence: true,
  numericality: { greater_than: 0 }

  validates :description,
  presence: true,
  
  # Mean length of a word around 5 characters.
  length: { minimum: 140/5 }

  validates :welcome_message,
  presence: true
end
