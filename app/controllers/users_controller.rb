class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /users
  def index
    @users = User.all
     #options = { include: [ :contacts, :journals]}
    render json: UserSerializer.new(@users)
   
  end

  # GET /users/1
  def show
    render json: @user
     #json_string = MovieSerializer.new(movie).serialized_json
     ##render json: user_json
  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created, location: @user
    else
     # render json: @user.errors, error: :unprocessable_entity
      render json: {
        error: 'invalid sign up please make sure your signing up with the correct information'
      } 
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.permit(:name, :password, :phone_number, :email)
    end
end
