class LoTemplatesController < ApplicationController
  before_action :set_lo_template, only: %i[ show edit update destroy ]

  # GET /lo_templates or /lo_templates.json
  def index
    @lo_templates = LoTemplate.all
  end

  # GET /lo_templates/1 or /lo_templates/1.json
  def show
  end

  # GET /lo_templates/new
  def new
    @lo_template = LoTemplate.new
  end

  # GET /lo_templates/1/edit
  def edit
  end

  # POST /lo_templates or /lo_templates.json
  def create
    @lo_template = LoTemplate.new(lo_template_params)

    respond_to do |format|
      if @lo_template.save
        format.html { redirect_to @lo_template, notice: "Lo template was successfully created." }
        format.json { render :show, status: :created, location: @lo_template }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @lo_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lo_templates/1 or /lo_templates/1.json
  def update
    respond_to do |format|
      if @lo_template.update(lo_template_params)
        format.html { redirect_to @lo_template, notice: "Lo template was successfully updated." }
        format.json { render :show, status: :ok, location: @lo_template }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @lo_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lo_templates/1 or /lo_templates/1.json
  def destroy
    @lo_template.destroy
    respond_to do |format|
      format.html { redirect_to lo_templates_url, notice: "Lo template was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lo_template
      @lo_template = LoTemplate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lo_template_params
      params.require(:lo_template).permit(:name_of_template, :number_of_templates)
    end
end
