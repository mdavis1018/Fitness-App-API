class ExercisesController < ApplicationController
  def index 
    @excercises = Excercise.all
    render template: "excercises/index"
    end
  
    def show
    @excercise = Excercise.find_by(id: params[:id])
    render template: "excercises/show"
    end
  
    def new
      @excercise = Excercise.new
      render template: "excercises/new"
    end
  
    def create
      @excercise = Excercise.new(
        name: params[:excercise][:name],
        description: params[:excercise][:description],
        excercise_category_id: params[:excercise][:excercise_category_id],
      )
      @excercise.save
      redirect_to "/excercises"
    end
  
    def edit
      @excercise = Excercise.find_by(id: params[:id])
      render template: "excercises/edit"
    end
  
    def update
      @excercise = Excercise.find_by(id: params[:id])
      @excercise.name = params[:excercise][:name]
      @excercise.description = params[:excercise][:description]
      @excercise.excercise_category_id = params[:excercise][:excercise_category_id]
      @excercise.save
      redirect_to "/excercises"
    end
  
    def destroy
      @excercise = Excercise.find_by(id: params[:id])
      @excercise.destroy
      redirect_to "/excercises", status: :see_other
    end
end
