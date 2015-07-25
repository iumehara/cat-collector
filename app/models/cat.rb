class Cat < ActiveRecord::Base
  has_many :snaps
  has_many :visits
  has_attached_file :image, styles: { small: '50x50>', large: '100x100>' }
  validates_attachment_content_type :image, content_type: 'image/png'

  def last_visit
    visits.where(user_id: @user.id).first
  end
end
