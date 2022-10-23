class WorkoutDetailsController < ApplicationController
  def new
    @workout_detail = WorkoutDetail.new
    render template: "workout_details/new"
    end
  
    def create
      @workout_detail = WorkoutDetail.new(
        excercise_id: params[:excercise_id],
        workout_id: params[:workout_id],
      weight: params[:weight],
      reps: params[:reps]
    )
  
     @workout_detail.save!   
     redirect_to workout_path(@workout_detail.workout)
    end
    
  
    private
  
    def details_params
      params.require(:workout_details).permit(:weight, :reps)
    end
end
