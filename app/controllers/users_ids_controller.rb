class UsersIdsController < ApplicationController
  before_action :set_users_id, only: %i[ show edit update destroy ]
  swagger_controller :users_ids, "User ID"

  # GET /users_ids or /users_ids.json
    swagger_api :index do
      summary 'Returns all UsersID'
    end
  def index
    @users_ids = UsersId.all
  end

  # GET /users_ids/1 or /users_ids/1.json
  def show
  end

  # GET /users_ids/new
    swagger_api :new do
      summary 'Create new UsersID'
    end
  def new
    @users_id = UsersId.new
  end

  # GET /users_ids/1/edit
  def edit
  end

  # POST /users_ids or /users_ids.json
    swagger_api :create do
      summary 'Create new UsersID'
    end
  def create
    @users_id = UsersId.new(users_id_params)

    respond_to do |format|
      if @users_id.save
        format.html { redirect_to @users_id, notice: "Users was successfully created." }
        format.json { render :show, status: :created, location: @users_id }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @users_id.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users_ids/1 or /users_ids/1.json
    swagger_api :update do
      summary 'Edit UsersID'
    end
  def update
    respond_to do |format|
      if @users_id.update(users_id_params)
        format.html { redirect_to @users_id, notice: "Users was successfully updated." }
        format.json { render :show, status: :ok, location: @users_id }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @users_id.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users_ids/1 or /users_ids/1.json
    swagger_api :destroy do
      summary 'Remove UsersID'
    end
  def destroy
    @users_id.destroy
    respond_to do |format|
      format.html { redirect_to users_ids_url, notice: "Users was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    swagger_api :new do
      summary 'Find UsersID'
    end
    def set_users_id
      @users_id = UsersId.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def users_id_params
      params.require(:users_id).permit(:index, :list_of_templates, :ongoing_event)
    end
end
