class Spot < ActiveRecord::Base
  belongs_to :yard
  has_one :good
end
