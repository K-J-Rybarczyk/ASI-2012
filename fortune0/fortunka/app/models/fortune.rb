class Fortune < ActiveRecord::Base
  attr_accessible :quotation, :source
  validates :quotation, length: {
    minimum: 8,
    maximum: 128
  }
  validates :source, presence: true

  validates :price, numericality: { only_integer: true }
  validate :email, uniqueness: true
end
