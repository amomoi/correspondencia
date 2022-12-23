class StatusBoxesController < ApplicationController
  before_action :set_status_box, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token

  # GET /status_boxes or /status_boxes.json
  def index
    @status_boxes = StatusBox.all
  end

  # GET /status_boxes/1 or /status_boxes/1.json
  def show
    releaseCrossDomain
    render json: @status_box
  end

  # GET /status_boxes/new
  def new
    @status_box = StatusBox.new
  end

  # GET /status_boxes/1/edit
  def edit
  end

  # POST /status_boxes or /status_boxes.json
  def create
    releaseCrossDomain
    @status_box = StatusBox.new(status_box_params)

    respond_to do |format|
      if @status_box.save
        format.html { redirect_to status_box_url(@status_box), notice: "Status box was successfully created." }
        format.json { render :show, status: :created, location: @status_box }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @status_box.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /status_boxes/1 or /status_boxes/1.json
  def update
    releaseCrossDomain
    respond_to do |format|
      if @status_box.update(status_box_params)
        format.html { redirect_to status_box_url(@status_box), notice: "Status box was successfully updated." }
        format.json { render :show, status: :ok, location: @status_box }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @status_box.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /status_boxes/1 or /status_boxes/1.json
  def destroy
    @status_box.destroy

    respond_to do |format|
      format.html { redirect_to status_boxes_url, notice: "Status box was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def checksenha
    releaseCrossDomain
    @status_box = StatusBox.where(senha: params[:senha])
    render json: @status_box, only: [:box_numero]
  end

  def checkid
    releaseCrossDomain
    @status_box = StatusBox.where(senha: params[:senha], ativo_inativo: params[:ativo_inativo])
    render json: @status_box, only: [:id] 
  end

  def check_vazio
    releaseCrossDomain
    @status_box = StatusBox.where(ativo_inativo: params[:ativo_inativo])
    render json: @status_box, only: [:box_numero]
  end

  def checkativo
    releaseCrossDomain
    @status_box = StatusBox.where(torre: params[:torre], n_apto: params[:n_apto], ativo_inativo: params[:ativo_inativo])
    render json: @status_box
  end

  def proc_por_unidade
    releaseCrossDomain
    @status_box = StatusBox.where(torre: params[:torre], n_apto: params[:n_apto],ativo_inativo: params[:ativo_inativo])
    render json: @status_box
  end

  def proc_por_box
    releaseCrossDomain
    @status_box = StatusBox.where(box: params[:box], ativo_inativo: params[:ativo_inativo])
    render json: @status_box
  end
  
  def envio_email
    releaseCrossDomain
    @status_box = StatusBox.find_by(id: params[:id])
    @status_box.update(envio: params[:envio])
    render json: @status_box

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_status_box
      @status_box = StatusBox.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def status_box_params
      params.require(:status_box).permit(:torre, :n_apto, :id_page, :senha, :envio, :n_encomendas, :box_number, :ativo_inativo, :lockercliente_id)
    end

    def releaseCrossDomain         
      headers['Access-Control-Allow-Origin'] = '*'
      headers['Access-Control-Allow-Methods'] = '*'
      headers['Access-Control-Request-Method'] = '*'
      headers['Access-Control-Allow-Headers'] = '*'
      headers['Access-Control-Max-Age'] = '600'
    end

end
