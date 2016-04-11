class MesaggesController < ApplicationController
  before_action :set_mesagge, only: [:show, :edit, :update, :destroy]

  # GET /mesagges
  # GET /mesagges.json
  def index
    @mesagges = Mesagge.all
  end

  # GET /mesagges/1
  # GET /mesagges/1.json
  def show
  end

  # GET /mesagges/new
  def new
    @mesagge = Mesagge.new
  end

  # GET /mesagges/1/edit
  def edit
  end

  # POST /mesagges
  # POST /mesagges.json
  def create
    @mesagge = Mesagge.new(mesagge_params)

    respond_to do |format|
      if @mesagge.save
        format.html { redirect_to @mesagge, notice: 'Mesagge was successfully created.' }
        format.json { render :show, status: :created, location: @mesagge }
      else
        format.html { render :new }
        format.json { render json: @mesagge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mesagges/1
  # PATCH/PUT /mesagges/1.json
  def update
    respond_to do |format|
      if @mesagge.update(mesagge_params)
        format.html { redirect_to @mesagge, notice: 'Mesagge was successfully updated.' }
        format.json { render :show, status: :ok, location: @mesagge }
      else
        format.html { render :edit }
        format.json { render json: @mesagge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mesagges/1
  # DELETE /mesagges/1.json
  def destroy
    @mesagge.destroy
    respond_to do |format|
      format.html { redirect_to mesagges_url, notice: 'Mesagge was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mesagge
      @mesagge = Mesagge.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mesagge_params
      params.require(:mesagge).permit(:message)
    end
end
