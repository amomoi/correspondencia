class LeiturasController < ApplicationController
  before_action :set_leitura, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token

  # GET /leituras or /leituras.json
  def index
    releaseCrossDomain
    @leituras = Leitura.all
  end

  # GET /leituras/1 or /leituras/1.json
  def show
  end

  # GET /leituras/new
  def new
    @leitura = Leitura.new
  end

  # GET /leituras/1/edit
  def edit
  end

  # POST /leituras or /leituras.json
  def create
    releaseCrossDomain
    @leitura = Leitura.new(leitura_params)

    respond_to do |format|
      if @leitura.save
        format.html { redirect_to leitura_url(@leitura), notice: "Leitura was successfully created." }
        format.json { render :show, status: :created, location: @leitura }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @leitura.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /leituras/1 or /leituras/1.json
  def update
    respond_to do |format|
      if @leitura.update(leitura_params)
        format.html { redirect_to leitura_url(@leitura), notice: "Leitura was successfully updated." }
        format.json { render :show, status: :ok, location: @leitura }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @leitura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leituras/1 or /leituras/1.json
  def destroy
    @leitura.destroy

    respond_to do |format|
      format.html { redirect_to leituras_url, notice: "Leitura was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def checksenha
    releaseCrossDomain
    @leitura = Leitura.where(senha: params[:senha])
    render json: @leitura, only: [:box_id]    
  end
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_leitura
      @leitura = Leitura.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def leitura_params
      params.require(:leitura).permit(:torre, :n_apto, :id_page, :senha, :envio, :n_encomendas, :box_id, :ativo_inativo)
    end

    def releaseCrossDomain

      if (not origin.nil?) and (origin == "https://ib.ampmsolucoes.com.br" or origin == "https://api.ampmsolucoes.com.br" or origin == "192.168.15.10")
        origin = origin
        else
          origin = ""
      end

      origin = request.headers["Origin"]
      
      headers['Access-Control-Allow-Origin'] = '*'
      headers['Access-Control-Allow-Methods'] = 'GET, POST'
      headers['Access-Control-Request-Method'] = '*'
      headers['Access-Control-Allow-Headers'] = '*'
    end
end
