class UsersController < ApplicationController
  def index 
    @users = User.all
    render template: "users/index"
    end
  
    def show
    @user = User.find_by(id: params[:id])
    render template: "users/show"
    end
  
    def new
      @user = User.new
      render template: "users/new"
    end
  
    def create
      @user = User.new(
        name: params[:user][:name],
        email: params[:user][:email],
        height: params[:user][:height],
        weight: params[:user][:weight],
        password: params[:user][:password],
        password_confirmation: params[:user][:password_confirmation],
      )
      if @user.save
        session[:user_id] = @user.id
        redirect_to "/excercise_categories"
      else
        render :new, status: :unprocessable_entity
      end
    end
  
    def edit
      @user = User.find_by(id: params[:id])
      render template: "users/edit"
    end
  
    def update
      @user = User.find_by(id: params[:id])
      @user.name = params[:user][:name]
      @user.weight = params[:user][:weight]
      @user.height = params[:user][:height]
      @user.email = params[:user][:email]
      @user.password_digest = params[:user][:password_digest]
      @user.save
      redirect_to "/users"
    end
  
    def destroy
      @user = User.find_by(id: params[:id])
      @user.destroy
      redirect_to "/users", status: :see_other
    end
end
