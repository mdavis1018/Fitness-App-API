class ExercisesCategoryController < ApplicationController
  def index
    @excercise_category = ExcerciseCategory.all
    render template: "excercise_categories/index"
    end
  
    def show
      @excercise_category = ExcerciseCategory.find_by(id: params[:id])
      render template: "excercise_categories/show"
    end
end
