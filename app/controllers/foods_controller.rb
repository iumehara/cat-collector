class FoodsController < ApplicationController

  def edit
    @food = Food.find(params[:id])
  end

  def update
    @food = Food.find(params[:id])
    respond_to do |format|
      if @food.update(food_params)
        format.html { redirect_to @food, notice: 'Food was successfully updated.' }
        format.json { render :show, status: :ok, location: @food }
      else
        format.html { render :edit }
        format.json { render json: @food.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def food_params
    params.require(:food).permit(:spot_id, :current_amount)
  end
end
