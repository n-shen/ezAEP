class MyprestsController < ApplicationController
  before_action :set_myprest, only: %i[ show edit update destroy ]

  # GET /myprests or /myprests.json
  def index
    @myprests = Myprest.all
  end

  # GET /myprests/1 or /myprests/1.json
  def show
  end

  # GET /myprests/new
  def new
    @myprest = Myprest.new
  end

  # GET /myprests/1/edit
  def edit
  end

  # POST /myprests or /myprests.json
  def create
    @myprest = Myprest.new(myprest_params)

    respond_to do |format|
      if @myprest.save
        format.html { redirect_to @myprest, notice: "Speaker and Presentation was linked successfully!" }
        format.json { render :show, status: :created, location: @myprest }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @myprest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /myprests/1 or /myprests/1.json
  def update
    respond_to do |format|
      if @myprest.update(myprest_params)
        format.html { redirect_to @myprest, notice: "Relationship was successfully updated." }
        format.json { render :show, status: :ok, location: @myprest }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @myprest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /myprests/1 or /myprests/1.json
  def destroy
    @myprest.destroy
    respond_to do |format|
      format.html { redirect_to myprests_url, notice: "The speaker has been removed from the presentation!" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_myprest
      @myprest = Myprest.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def myprest_params
      params.require(:myprest).permit(:user_id, :prest_id)
    end
end
