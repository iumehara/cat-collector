class SpotsController < ApplicationController

  def update
    @spot = Spot.find(params[:id])
    respond_to do |format|
      if @spot.update(spot_params)
        format.html { redirect_to @good, notice: 'Good was successfully updated.' }
        format.json { render :show, status: :ok, location: @good }
      else
        format.html { render :edit }
        format.json { render json: @good.errors, status: :unprocessable_entity }
      end
    end
  end

end
