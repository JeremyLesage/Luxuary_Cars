class LocationsAchatsController < ApplicationController
  before_action :set_locations_achat, only: %i[ show edit update destroy ]

  # GET /locations_achats or /locations_achats.json
  def index
    @locations_achats = LocationsAchat.all
  end

  # GET /locations_achats/1 or /locations_achats/1.json
  def show
  end

  # GET /locations_achats/new
  def new
    @locations_achat = LocationsAchat.new
  end

  # GET /locations_achats/1/edit
  def edit
  end

  # POST /locations_achats or /locations_achats.json
  def create
    @locations_achat = LocationsAchat.new(locations_achat_params)

    respond_to do |format|
      if @locations_achat.save
        format.html { redirect_to @locations_achat, notice: "Locations achat was successfully created." }
        format.json { render :show, status: :created, location: @locations_achat }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @locations_achat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /locations_achats/1 or /locations_achats/1.json
  def update
    respond_to do |format|
      if @locations_achat.update(locations_achat_params)
        format.html { redirect_to @locations_achat, notice: "Locations achat was successfully updated." }
        format.json { render :show, status: :ok, location: @locations_achat }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @locations_achat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /locations_achats/1 or /locations_achats/1.json
  def destroy
    @locations_achat.destroy
    respond_to do |format|
      format.html { redirect_to locations_achats_url, notice: "Locations achat was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_locations_achat
      @locations_achat = LocationsAchat.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def locations_achat_params
      params.require(:locations_achat).permit(:nom_voiture, :vitesse_max, :acceleration, :puissance, :prix, :photo)
    end
end
