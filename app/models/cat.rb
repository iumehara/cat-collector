class Cat < ActiveRecord::Base
  has_many :snaps
  has_many :visits

  def last_visit
    visits.where(user_id: @user.id).first
  end

  def image
    AWS_S3_PATH + image_name
  end
end
