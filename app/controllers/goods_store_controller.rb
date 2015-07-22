class GoodsStoreController < ApplicationController
  def index
    @goods = Good.all
  end

  def show
    @good = Good.find(params[:id])
  end

  def buy
    @good = Good.find(params[:id])
  end
end
