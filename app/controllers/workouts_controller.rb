class WorkoutsController < ApplicationController

  def index 
    @workouts = Workout.all
    render template: "workouts/index"
    end
  
    def show
    @workout = Workout.find_by(id: params[:id])
    render template: "workouts/show"
    end
  
    def new
      @workout = Workout.new
      render template: "workouts/new"
    end
  
    def create
      @workout = Workout.new(
        user_id: current_user.id,
        title: params[:workout][:title],
      )
      @workout.save
      redirect_to "/workouts"
    end
  
    def edit
      @workout = Workout.find_by(id: params[:id])
      render template: "workouts/edit"
    end
  
    def update
      @workout = Workout.find_by(id: params[:id])
      @workout.title = params[:workout][:title]
      @workout.user_id = params[:workout][:user_id]
      @workout.save
      redirect_to "/workouts"
    end
  
    def destroy
      @workout = Workout.find_by(id: params[:id])
      @workout.destroy
      redirect_to "/workouts", status: :see_other
    end

    
end
