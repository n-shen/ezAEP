class PrestsController < ApplicationController
  before_action :set_prest, only: %i[ show edit update destroy ]

  # GET /prests or /prests.json
  def index
    @prests = Prest.all
  end

  # GET /prests/1 or /prests/1.json
  def show
  end

  # GET /prests/new
  def new
    @prest = Prest.new
  end

  # GET /prests/1/edit
  def edit
  end

  # POST /prests or /prests.json
  def create
    @prest = Prest.new(prest_params)

    respond_to do |format|
      if @prest.save
        format.html { redirect_to @prest, notice: "Prest was successfully created." }
        format.json { render :show, status: :created, location: @prest }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @prest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prests/1 or /prests/1.json
  def update
    respond_to do |format|
      if @prest.update(prest_params)
        format.html { redirect_to @prest, notice: "Prest was successfully updated." }
        format.json { render :show, status: :ok, location: @prest }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @prest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prests/1 or /prests/1.json
  def destroy
    @prest.destroy
    respond_to do |format|
      format.html { redirect_to prests_url, notice: "Prest was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prest
      @prest = Prest.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def prest_params
      params.require(:prest).permit(:prest_name, :prest_evdue, :prest_desc, :event_id)
    end
end
