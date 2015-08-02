class Dish < ActiveRecord::Base
  belongs_to :yard
  has_one :food

  def empty?
    amount.blank? || amount == 0
  end

  def percent_px # pixels of 200px bar
    amount / food.amount.to_f * 200
  end

  def decrement_amount
    return if updated_at > 5.minutes.ago
    new_amount = amount - (Time.now - updated_at.to_time) / 60
    self.amount = [new_amount, 0].max
    save
  end

end
