class EventsController < ApplicationController
  before_action :set_event, only: %i[ show edit update destroy ]
  swagger_controller :events, "Events"
  # GET /events or /events.json
  
  swagger_api :index do
    summary 'Returns all events'
  end
  def index
    @events = Event.all
  end

  # GET /events/1 or /events/1.json
  def show
  end

  # GET /events/new
  swagger_api :new do
    summary 'Create new event'
  end
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events or /events.json
  swagger_api :crate do
    summary 'Create new event'
  end
  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: "Event was successfully created." }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1 or /events/1.json
  swagger_api :update do
    summary 'Edit event'
  end
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: "Event was successfully updated." }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1 or /events/1.json
  swagger_api :destroy do
    summary 'Remove event'
  end
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: "Event was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    swagger_api :set_event do
    summary 'Find Your event'
  end
    def set_event
      @event = Event.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def event_params
      params.require(:event).permit(:No_Template, :Place, :Date)
    end
end
