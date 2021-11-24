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
    @myevent = Myevent.new(myevent_params)

    respond_to do |format|
      if @myevent.save
        format.html { redirect_to @myevent, notice: "Myevent was successfully created." }
        format.json { render :show, status: :created, location: @myevent }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @myevent.errors, status: :unprocessable_entity }
      end
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
    respond_to do |format|
      format.html { redirect_to myevents_url, notice: "Myevent was successfully destroyed." }
      format.json { head :no_content }
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
