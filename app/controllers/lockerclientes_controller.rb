class LockerclientesController < ApplicationController
  before_action :set_lockercliente, only: %i[ show edit update destroy ]

  # GET /lockerclientes or /lockerclientes.json
  def index
    @lockerclientes = Lockercliente.all
  end

  # GET /lockerclientes/1 or /lockerclientes/1.json
  def show
  end

  # GET /lockerclientes/new
  def new
    @lockercliente = Lockercliente.new
  end

  # GET /lockerclientes/1/edit
  def edit
  end

  # POST /lockerclientes or /lockerclientes.json
  def create
    @lockercliente = Lockercliente.new(lockercliente_params)

    respond_to do |format|
      if @lockercliente.save
        format.html { redirect_to lockercliente_url(@lockercliente), notice: "Lockercliente was successfully created." }
        format.json { render :show, status: :created, location: @lockercliente }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @lockercliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lockerclientes/1 or /lockerclientes/1.json
  def update
    respond_to do |format|
      if @lockercliente.update(lockercliente_params)
        format.html { redirect_to lockercliente_url(@lockercliente), notice: "Lockercliente was successfully updated." }
        format.json { render :show, status: :ok, location: @lockercliente }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @lockercliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lockerclientes/1 or /lockerclientes/1.json
  def destroy
    @lockercliente.destroy

    respond_to do |format|
      format.html { redirect_to lockerclientes_url, notice: "Lockercliente was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lockercliente
      @lockercliente = Lockercliente.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lockercliente_params
      params.require(:lockercliente).permit(:nome_empresa, :site)
    end
end
