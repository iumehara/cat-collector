class Cat < ActiveRecord::Base

  def image
    AWS_S3_PATH + image_name
  end

end
