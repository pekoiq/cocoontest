class TodoController < ApplicationController
  def plantings
    @crops = Crop.all
    @plantings = Planting.all
    @varieties = Variety.all
  end
end
