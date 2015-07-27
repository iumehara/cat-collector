class Yard < ActiveRecord::Base
  has_many :spots
  has_one :dish
end
