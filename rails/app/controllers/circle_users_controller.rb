class CircleUsersController < ApplicationController
  before_action :set_circle_user, only: [:show, :edit, :update, :destroy]

  # GET /circle_users
  # GET /circle_users.json
  def index
    @circle_users = CircleUser.all
  end

  # GET /circle_users/1
  # GET /circle_users/1.json
  def show
  end

  # GET /circle_users/new
  def new
    @circle_user = CircleUser.new
  end

  # GET /circle_users/1/edit
  def edit
  end

  # POST /circle_users
  # POST /circle_users.json
  def create
    @circle_user = CircleUser.new(circle_user_params)

    respond_to do |format|
      if @circle_user.save
        format.html { redirect_to @circle_user, notice: 'Circle user was successfully created.' }
        format.json { render :show, status: :created, location: @circle_user }
      else
        format.html { render :new }
        format.json { render json: @circle_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /circle_users/1
  # PATCH/PUT /circle_users/1.json
  def update
    respond_to do |format|
      if @circle_user.update(circle_user_params)
        format.html { redirect_to @circle_user, notice: 'Circle user was successfully updated.' }
        format.json { render :show, status: :ok, location: @circle_user }
      else
        format.html { render :edit }
        format.json { render json: @circle_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /circle_users/1
  # DELETE /circle_users/1.json
  def destroy
    @circle_user.destroy
    respond_to do |format|
      format.html { redirect_to circle_users_url, notice: 'Circle user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_circle_user
      @circle_user = CircleUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def circle_user_params
      params.require(:circle_user).permit(:user_id, :circle_id, :moderator)
    end
end
