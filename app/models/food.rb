class Food < ActiveRecord::Base
  belongs_to :dish

  def image
    image_name = dish.empty? ? image_empty_name : image_full_name
    AWS_S3_PATH + image_name
  end

end
