class ImplementosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_implemento, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json

  def index
    @implementos = Implemento.search(params[:search]).paginate(:page => params[:page], :per_page => 10)
    respond_with(@implementos)
  end

  def show
    respond_with(@implemento)
  end

  def new
    @implemento = Implemento.new
    respond_with(@implemento)
  end

  def edit
  end

  def create
    @implemento = Implemento.new(implemento_params)
    @implemento.save
    respond_with(@implemento)
  end

  def update
    @implemento.update(implemento_params)
    respond_with(@implemento)
  end

  def destroy
    @implemento.destroy
    respond_with(@implemento)
  end

  private
    def set_implemento
      @implemento = Implemento.find(params[:id])
    end

    def implemento_params
      params.require(:implemento).permit(:name, :piezas, :solicited, :reserved, :available,
                                         :solicitud_ids)
    end
end
