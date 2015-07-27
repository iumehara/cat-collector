class Good < ActiveRecord::Base
  belongs_to :spot

  def image
    AWS_S3_PATH + image_name
  end

end
