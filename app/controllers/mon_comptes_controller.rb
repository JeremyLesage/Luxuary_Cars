class MonComptesController < ApplicationController
  before_action :set_mon_compte, only: %i[ show edit update destroy ]

  # GET /mon_comptes or /mon_comptes.json
  def index
    @mon_comptes = MonCompte.all
  end

  # GET /mon_comptes/1 or /mon_comptes/1.json
  def show
    @mon_comptes = MonCompte.all
  end

  # GET /mon_comptes/new
  def new
    @mon_compte = MonCompte.new
  end

  # GET /mon_comptes/1/edit
  def edit
  end

  # POST /mon_comptes or /mon_comptes.json
  def create
    @mon_compte = MonCompte.new(mon_compte_params)

    respond_to do |format|
      if @mon_compte.save
        format.html { redirect_to @mon_compte, notice: "Mon compte was successfully created." }
        format.json { render :show, status: :created, location: @mon_compte }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mon_compte.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mon_comptes/1 or /mon_comptes/1.json
  def update
    respond_to do |format|
      if @mon_compte.update(mon_compte_params)
        format.html { redirect_to @mon_compte, notice: "Mon compte was successfully updated." }
        format.json { render :show, status: :ok, location: @mon_compte }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mon_compte.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mon_comptes/1 or /mon_comptes/1.json
  def destroy
    @mon_compte.destroy
    respond_to do |format|
      format.html { redirect_to mon_comptes_url, notice: "Mon compte was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mon_compte
      @mon_compte = MonCompte.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mon_compte_params
      params.require(:mon_compte).permit(:h_f, :nom, :prenom, :numéro_tel, :adress, :photo)
    end
end
