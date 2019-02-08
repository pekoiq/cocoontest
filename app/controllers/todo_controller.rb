class TodoController < ApplicationController
  def plantings
    @crops = Crop.all
    @croptasks = Croptask.all
    @plantings = Planting.all
    @varieties = Variety.all
    end

  def tasks
    @crops = Crop.all
    @croptasks = Croptask.all
    @plantings = Planting.all
    @varieties = Variety.all
@tasktodos = Tasktodo.all

  end

  def seeds
    @crops = Crop.all
    @croptasks = Croptask.all
    @plantings = Planting.all
    @varieties = Variety.all
  @tasktodos = Tasktodo.all

  end

  def greenhouse
    @crops = Crop.all
    @croptasks = Croptask.all
    @plantings = Planting.all
    @varieties = Variety.all
  @tasktodos = Tasktodo.all

  end

end
