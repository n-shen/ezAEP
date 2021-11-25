class PgradesController < ApplicationController
  before_action :set_pgrade, only: %i[ show edit update destroy ]

  # GET /pgrades or /pgrades.json
  def index
    @pgrades = Pgrade.all
  end

  # GET /pgrades/1 or /pgrades/1.json
  def show
  end

  # GET /pgrades/new
  def new
    @pgrade = Pgrade.new
  end

  # GET /pgrades/1/edit
  def edit
  end

  # POST /pgrades or /pgrades.json
  def create
    @pgrade = Pgrade.new(pgrade_params)

    respond_to do |format|
      if @pgrade.save
        format.html { redirect_to @pgrade, notice: "Pgrade was successfully created." }
        format.json { render :show, status: :created, location: @pgrade }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pgrade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pgrades/1 or /pgrades/1.json
  def update
    respond_to do |format|
      if @pgrade.update(pgrade_params)
        format.html { redirect_to @pgrade, notice: "Pgrade was successfully updated." }
        format.json { render :show, status: :ok, location: @pgrade }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pgrade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pgrades/1 or /pgrades/1.json
  def destroy
    @pgrade.destroy
    respond_to do |format|
      format.html { redirect_to pgrades_url, notice: "Pgrade was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pgrade
      @pgrade = Pgrade.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pgrade_params
      params.require(:pgrade).permit(:user_id, :prest_id, :pd_socre, :pd_review)
    end
end
