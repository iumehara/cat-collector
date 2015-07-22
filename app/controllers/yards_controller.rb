class YardsController < ApplicationController

  def show
    @yard = Yard.first
  end

end
