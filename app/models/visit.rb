class Visit < ActiveRecord::Base
  belongs_to :cat
  belongs_to :user
  belongs_to :spot

end
