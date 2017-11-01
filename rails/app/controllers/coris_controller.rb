class CorisController < ApplicationController
  before_action :set_cori, only: [:show, :edit, :update, :destroy]

  # GET /coris
  # GET /coris.json
  def index
    @coris = Cori.all
  end

  # GET /coris/1
  # GET /coris/1.json
  def show
  end

  # GET /coris/new
  def new
    @cori = Cori.new
  end

  # GET /coris/1/edit
  def edit
  end

  # POST /coris
  # POST /coris.json
  def create
    @cori = Cori.new(cori_params)

    respond_to do |format|
      if @cori.save
        format.html { redirect_to @cori, notice: 'Cori was successfully created.' }
        format.json { render :show, status: :created, location: @cori }
      else
        format.html { render :new }
        format.json { render json: @cori.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coris/1
  # PATCH/PUT /coris/1.json
  def update
    respond_to do |format|
      if @cori.update(cori_params)
        format.html { redirect_to @cori, notice: 'Cori was successfully updated.' }
        format.json { render :show, status: :ok, location: @cori }
      else
        format.html { render :edit }
        format.json { render json: @cori.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coris/1
  # DELETE /coris/1.json
  def destroy
    @cori.destroy
    respond_to do |format|
      format.html { redirect_to coris_url, notice: 'Cori was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cori
      @cori = Cori.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cori_params
      params.require(:cori).permit(:when)
    end
end
