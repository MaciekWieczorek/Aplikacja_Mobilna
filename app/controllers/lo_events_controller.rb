class LoEventsController < ApplicationController
  before_action :set_lo_event, only: %i[ show edit update destroy ]
  swagger_controller :lo_events, "List of events"

  # GET /lo_events or /lo_events.json
  swagger_api :index do
    summary 'List all events'
  end
  def index
    @lo_events = LoEvent.all
  end

  # GET /lo_events/1 or /lo_events/1.json
  def show
  end

  # GET /lo_events/new
  swagger_api :new do
    summary 'Create new event'
  end
  def new
    @lo_event = LoEvent.new
  end

  # GET /lo_events/1/edit
  def edit
  end

  # POST /lo_events or /lo_events.json
  swagger_api :create do
    summary 'Create new event'
  end
  def create
    @lo_event = LoEvent.new(lo_event_params)

    respond_to do |format|
      if @lo_event.save
        format.html { redirect_to @lo_event, notice: "Lo event was successfully created." }
        format.json { render :show, status: :created, location: @lo_event }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @lo_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lo_events/1 or /lo_events/1.json
  swagger_api :update do
    summary 'Edit event'
  end
  def update
    respond_to do |format|
      if @lo_event.update(lo_event_params)
        format.html { redirect_to @lo_event, notice: "Lo event was successfully updated." }
        format.json { render :show, status: :ok, location: @lo_event }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @lo_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lo_events/1 or /lo_events/1.json
  swagger_api :destroy do
    summary 'Remove event'
  end
  def destroy
    @lo_event.destroy
    respond_to do |format|
      format.html { redirect_to lo_events_url, notice: "Lo event was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    swagger_api :new do
    summary 'Find event'
  end
    def set_lo_event
      @lo_event = LoEvent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lo_event_params
      params.require(:lo_event).permit(:Ongoing_events, :Event, :on_off)
    end
end
