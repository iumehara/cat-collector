class GoodsController < ApplicationController
  before_action :set_good, only: [:show, :edit, :update, :destroy]

  def index
    @goods = Good.all
  end

  def show
    @good = Good.find(params[:id])
  end

  def place
    @good = Good.find(params[:id])
  end

  def create
    @good = Good.new(good_params)

    respond_to do |format|
      if @good.save
        format.html { redirect_to @good, notice: 'Good was successfully created.' }
        format.json { render :show, status: :created, location: @good }
      else
        format.html { render :new }
        format.json { render json: @good.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def good_params
    params.require(:good).permit(:name, :price_type, :price_value, :size)
  end
end
