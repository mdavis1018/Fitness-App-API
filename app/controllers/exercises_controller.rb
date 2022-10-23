class ExercisesController < ApplicationController
  def index 
    @exercises = Exercise.all
    render json: @exercises
    end
  
    def show
    @exercise = Exercise.find_by(id: params[:id])
    render template: "exercises/show"
    end
  
    def new
      @exercise = Exercise.new
      render template: "exercises/new"
    end
  
    def create
      @exercise = Exercise.new(
        name: params[:exercise][:name],
        description: params[:exercise][:description],
        exercise_category_id: params[:exercise][:exercise_category_id],
      )
      @exercise.save
      redirect_to "/exercises"
    end
  
    def edit
      @exercise = Exercise.find_by(id: params[:id])
      render template: "exercises/edit"
    end
  
    def update
      @exercise = Exercise.find_by(id: params[:id])
      @exercise.name = params[:exercise][:name]
      @exercise.description = params[:exercise][:description]
      @exercise.exercise_category_id = params[:exercise][:exercise_category_id]
      @exercise.save
      redirect_to "/exercises"
    end
  
    def destroy
      @exercise = Exercise.find_by(id: params[:id])
      @exercise.destroy
      redirect_to "/exercises", status: :see_other
    end
end
