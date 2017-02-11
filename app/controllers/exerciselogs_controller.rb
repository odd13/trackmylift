class ExerciselogsController < ApplicationController
  def index
    @exerciselogs = Exerciselog.all
  end

  def show
    @exerciselog = Exerciselog.order_by(weight: :desc).first
  end

  def new
    @exerciselog = Exerciselog.new
  end

  def create
    @exerciselog = Exerciselog.new(exerciselog_params)
    @exerciselog.save

    redirect_to exercisegroup_path(@exerciselog.exercisegroup_id)
  end

  private

  def exerciselog_params
    params.require(:exerciselog).permit(:weight, :reps, :exercisegroup_id)
  end
end
