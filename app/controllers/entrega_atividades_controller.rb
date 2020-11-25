class EntregaAtividadesController < ApplicationController
  before_action :set_entrega_atividade, only: [:show, :update, :destroy]

  # GET /entrega_atividades
  def index
    @entrega_atividades = EntregaAtividade.all

    render json: @entrega_atividades
  end

  # GET /entrega_atividades/1
  def show
    render json: @entrega_atividade
  end

  # POST /entrega_atividades
  def create
    @entrega_atividade = EntregaAtividade.new(entrega_atividade_params)

    if @entrega_atividade.save
      render json: @entrega_atividade, status: :created, location: @entrega_atividade
    else
      render json: @entrega_atividade.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /entrega_atividades/1
  def update
    if @entrega_atividade.update(entrega_atividade_params)
      render json: @entrega_atividade
    else
      render json: @entrega_atividade.errors, status: :unprocessable_entity
    end
  end

  # DELETE /entrega_atividades/1
  def destroy
    @entrega_atividade.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entrega_atividade
      @entrega_atividade = EntregaAtividade.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def entrega_atividade_params
      params.permit(:link, :user_id, :atividade_id)
    end
end
