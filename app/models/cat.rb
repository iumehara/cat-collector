class Cat < ActiveRecord::Base
	has_many :snaps
	has_many :visits

	def last_visit
		self.visits.where(user_id: @user.id).first
	end

end