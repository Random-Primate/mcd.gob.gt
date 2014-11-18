class ImplementosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_implemento, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  respond_to :html, :json

  def index
    # Searching algo
    if params[:search]
      min = params[:search].downcase
    else
      min = params[:search]
    end
    @implementos = Implemento.search(min).paginate(:page => params[:page], :per_page => 10)
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
      params.require(:implemento).permit(:name, :piezas, :solicited, :reserved, :available, :avatar,
                                         soliciteds_attributes: [:id, :amount, solicituds_attributes: [],
                                         ])
    end
end
