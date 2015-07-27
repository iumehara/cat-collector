class DishesController < ApplicationController

  def update
    @dish = Dish.find(params[:id])

    @dish.amount = @dish.food.amount
    if @dish.save
      message = 'Dish was refilled'
    else
      message = "Dish couldn't be refilled"
    end
    redirect_to root_path, notice: message
  end

end
