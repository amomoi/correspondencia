class LockerusuariosController < ApplicationController
  before_action :set_lockerusuario, only: %i[ show edit update destroy ]

  # GET /lockerusuarios or /lockerusuarios.json
  def index
    @lockerusuarios = Lockerusuario.all
  end

  # GET /lockerusuarios/1 or /lockerusuarios/1.json
  def show
  end

  # GET /lockerusuarios/new
  def new
    @lockerusuario = Lockerusuario.new
  end

  # GET /lockerusuarios/1/edit
  def edit
  end

  # POST /lockerusuarios or /lockerusuarios.json
  def create
    @lockerusuario = Lockerusuario.new(lockerusuario_params)

    respond_to do |format|
      if @lockerusuario.save
        format.html { redirect_to lockerusuario_url(@lockerusuario), notice: "Lockerusuario was successfully created." }
        format.json { render :show, status: :created, location: @lockerusuario }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @lockerusuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lockerusuarios/1 or /lockerusuarios/1.json
  def update
    respond_to do |format|
      if @lockerusuario.update(lockerusuario_params)
        format.html { redirect_to lockerusuario_url(@lockerusuario), notice: "Lockerusuario was successfully updated." }
        format.json { render :show, status: :ok, location: @lockerusuario }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @lockerusuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lockerusuarios/1 or /lockerusuarios/1.json
  def destroy
    @lockerusuario.destroy

    respond_to do |format|
      format.html { redirect_to lockerusuarios_url, notice: "Lockerusuario was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lockerusuario
      @lockerusuario = Lockerusuario.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lockerusuario_params
      params.require(:lockerusuario).permit(:nome, :email, :cpf, :celular, :senha, :lockercliente_id)
    end
end
