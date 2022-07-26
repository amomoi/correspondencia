class LeiturasController < ApplicationController
  before_action :set_leitura, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token

  # GET /leituras or /leituras.json
  def index
    releaseCrossDomain
    @leituras = Leitura.all
  end

  # GET /leituras/1 or /leituras/1.json/wp-content/uploads/2021/06/Captura-de-Tela-2021-06-28-às-22.14.23.png
  def show
    releaseCrossDomain
    render json: @leitura

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
    releaseCrossDomain
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

  def checkid
    releaseCrossDomain
    @leitura = Leitura.where(senha: params[:senha], ativo_inativo: params[:ativo_inativo])
    render json: @leitura, only: [:id] 
  end

  def check_vazio
    releaseCrossDomain
    @leitura = Leitura.where(ativo_inativo: params[:ativo_inativo])
    render json: @leitura, only: [:box_id]
  end

  def checkativo
    releaseCrossDomain
    @leitura = Leitura.where(torre: params[:torre], n_apto: params[:n_apto], ativo_inativo: params[:ativo_inativo])
    render json: @leitura
  end

  def proc_por_unidade
    releaseCrossDomain
    @leitura = Leitura.where(torre: params[:torre], n_apto: params[:n_apto],ativo_inativo: params[:ativo_inativo])
    render json: @leitura
  end

  def proc_por_box
    releaseCrossDomain
    @leitura = Leitura.where(box: params[:box], ativo_inativo: params[:ativo_inativo])
    render json: @leitura
  end
  
  def envio_email
    releaseCrossDomain
    @leitura = Leitura.find_by(id: params[:id])
    @leitura.update(envio: params[:envio])
    render json: @leitura

  end
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_leitura
      @leitura = Leitura.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def leitura_params
      params.require(:leitura).permit(:id, :torre, :n_apto, :id_page, :senha, :envio, :n_encomendas, :box_id, :ativo_inativo)
    end

    def releaseCrossDomain         
      headers['Access-Control-Allow-Origin'] = '*'
      headers['Access-Control-Allow-Methods'] = '*'
      headers['Access-Control-Request-Method'] = '*'
      headers['Access-Control-Allow-Headers'] = '*'
      headers['Access-Control-Max-Age'] = '600'
    end
end
