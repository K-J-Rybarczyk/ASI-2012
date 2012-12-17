class Anime < ActiveRecord::Base
  attr_accessible :description, :episodes, :title, :user
end
