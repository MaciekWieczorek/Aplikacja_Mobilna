class TemplatesController < ApplicationController
  before_action :set_template, only: %i[ show edit update destroy ]
  swagger_controller :templates, "Templates"

# GET /templates or /templates.json
swagger_api :index do
  summary 'Returns all templates'
end
  def index
    @templates = Template.all
  end

  # GET /templates/1 or /templates/1.json
  def show
  end

  # GET /templates/new
  swagger_api :new do
    summary 'Creates new template'
  end
  def new
    @template = Template.new
  end

  # GET /templates/1/edit
  def edit
  end

  # POST /templates or /templates.json
  swagger_api :create do
    summary 'Creates new template'
  end
  def create
    @template = Template.new(template_params)

    respond_to do |format|
      if @template.save
        format.html { redirect_to @template, notice: "Template was successfully created." }
        format.json { render :show, status: :created, location: @template }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /templates/1 or /templates/1.json
  swagger_api :update do
    summary 'Edit template'
  end
  def update
    respond_to do |format|
      if @template.update(template_params)
        format.html { redirect_to @template, notice: "Template was successfully updated." }
        format.json { render :show, status: :ok, location: @template }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /templates/1 or /templates/1.json
  swagger_api :destroy do 
  summary 'Remove template'
  end
  def destroy
    @template.destroy
    respond_to do |format|
      format.html { redirect_to templates_url, notice: "Template was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    swagger_api :set_template do
      summary 'Find your template'
    end
    def set_template
      @template = Template.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def template_params
      params.require(:template).permit(:name_of_template, :product, :number_of_product, :checkbox)
    end
end
