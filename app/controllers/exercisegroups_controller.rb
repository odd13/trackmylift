class ExercisegroupsController < ApplicationController
  def index
    @exercisegroups = Exercisegroup.all
  end

  def new
    @exerciselog = Exerciselog.new
  end

  def show
    @exercisegroup = Exercisegroup.find(params[:id])
  end
end
