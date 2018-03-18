class UsersController < ApplicationController

  skip_before_action :verify_authenticity_token

  def index
    @users = User.all
    if params[:search]
      @users = User.search(params[:search])
    else
      @users = User.all
    end
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    # @relationship = current_user.relationships.build
  end

  def create
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        format.html { redirect_to root_url }
        format.json {  }
      else
        format.html { render :new }
      #   format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :skill)
    end

end
