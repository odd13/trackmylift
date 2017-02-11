class ExercisegroupsController < ApplicationController
  def index
    @exercisegroups = Exercisegroup.all
    lift_percentages
  end

  def new
    @exerciselog = Exerciselog.new
  end

  def show
    @exercisegroup = Exercisegroup.find(params[:id])
    lift_percentages
  end

  def lift_percentages
    if @top_exercise = Exerciselog.order(weight: :desc).where('exercisegroup_id = ?', params[:id]).first
      @lift_percentage_returns = [
                                [90, (@top_exercise.weight * 0.9)],
                                [80, (@top_exercise.weight * 0.8)],
                                [70, (@top_exercise.weight * 0.7)],
                                [60, (@top_exercise.weight * 0.6)],
                                [50, (@top_exercise.weight * 0.5)]]
    end


  end
end
