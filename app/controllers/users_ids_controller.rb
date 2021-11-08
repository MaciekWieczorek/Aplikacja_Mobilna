class UsersIdsController < ApplicationController
  before_action :set_users_id, only: %i[ show edit update destroy ]

  # GET /users_ids or /users_ids.json
  def index
    @users_ids = UsersId.all
  end

  # GET /users_ids/1 or /users_ids/1.json
  def show
  end

  # GET /users_ids/new
  def new
    @users_id = UsersId.new
  end

  # GET /users_ids/1/edit
  def edit
  end

  # POST /users_ids or /users_ids.json
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
  def destroy
    @users_id.destroy
    respond_to do |format|
      format.html { redirect_to users_ids_url, notice: "Users was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_users_id
      @users_id = UsersId.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def users_id_params
      params.require(:users_id).permit(:index, :list_of_templates, :ongoing_event)
    end
end
