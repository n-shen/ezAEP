class MyeventsController < ApplicationController
  before_action :set_myevent, only: %i[ show edit update destroy ]

  # GET /myevents or /myevents.json
  def index
    @myevents = Myevent.all
  end

  # GET /myevents/1 or /myevents/1.json
  def show
  end

  # GET /myevents/new
  def new
    @myevent = Myevent.new
  end

  # GET /myevents/1/edit
  def edit
  end

  # POST /myevents or /myevents.json
  def create
    event = Event.find_by(id: myevent_params[:event_id])
    if event.present? && myevent_params[:myevent_code] == event.evt_code
      joined = Myevent.where(event_id: myevent_params[:event_id], user_id: current_user.id)
      if joined.present?
        redirect_to new_myevent_path, alert: 'You have attended the event! See My Events for details.'
      else
        @myevent = Myevent.new(myevent_params)
        respond_to do |format|
          if @myevent.save
            format.html { redirect_to @myevent, notice: 'You enrolled this event successfully!' }
            format.json { render :show, status: :created, location: @myevent }
          else
            format.html { render :new, status: :unprocessable_entity }
            format.json { render json: @myevent.errors, status: :unprocessable_entity }
          end
        end
      end
    else
      redirect_to new_myevent_path, alert: 'The event does NOT exist or your AccessCode is wrong! Please contact your event host. '
    end
  end

  # PATCH/PUT /myevents/1 or /myevents/1.json
  def update
    respond_to do |format|
      if @myevent.update(myevent_params)
        format.html { redirect_to @myevent, notice: "Myevent was successfully updated." }
        format.json { render :show, status: :ok, location: @myevent }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @myevent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /myevents/1 or /myevents/1.json
  def destroy
    @myevent.destroy
    if !current_user.admin
      respond_to do |format|
        format.html { redirect_to myevents_url, notice: "You've unenrolled this event!" }
        format.json { head :no_content }
      end
    else
      redirect_to events_path, notice: "Events' records updated!"
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_myevent
      @myevent = Myevent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def myevent_params
      params.require(:myevent).permit(:user_id, :event_id, :myevent_code)
    end
end
