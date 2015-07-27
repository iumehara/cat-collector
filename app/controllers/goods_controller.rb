class GoodsController < ApplicationController
  before_action :set_good, only: [:edit, :update, :destroy]

  def index
    @goods = Good.all
    @foods = Food.all
  end

  def edit
    @good = Good.find(params[:id])
    @yard = Yard.first
    @back_path = goods_path
    render 'yards/show'
  end

  def update
    good_params = { spot_id: params[:spot_id] }
    respond_to do |format|
      if @good.update(good_params)
        format.html { redirect_to goods_url, notice: 'Good was successfully updated.' }
        format.json { render :show, status: :ok, location: @good }
      else
        format.html { render :edit }
        format.json { render json: @good.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_good
    @good = Good.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  # def good_params
  # params.require(:good).permit(:name, :price_type, :price_value, :size, :spot_id)
  # end
end
