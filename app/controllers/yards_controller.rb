class YardsController < ApplicationController

  def show
    @yard = Yard.first
    @yard.dish.decrement_amount if @yard.dish
  end

end
