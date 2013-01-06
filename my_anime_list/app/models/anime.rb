class Anime < ActiveRecord::Base
  attr_accessible :description, :episodes, :title

  validates :episodes, numericality: {
    only_integer: true
  }

  validates :description, length: {
    minimum: 8,
    maximum: 128
  }
end
