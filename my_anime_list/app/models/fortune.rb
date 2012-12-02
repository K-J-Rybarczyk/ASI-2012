class Fortune < ActiveRecord::Base
  attr_accessible :description, :episodes, :title
  validates :description, length:
  {
    minimum: 8,
    maximum: 256
  }
end
