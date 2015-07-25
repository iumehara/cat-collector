class Good < ActiveRecord::Base
  belongs_to :spot
  has_attached_file :image

  validates_attachment_content_type :image, content_type: 'image/png'
end
