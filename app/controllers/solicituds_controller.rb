class SolicitudsController < ApplicationController
  before_action :set_solicitud, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json

  def index
    @solicituds = Solicitud.search(params[:search]).paginate(:page => params[:page], :per_page => 10)
    respond_with(@solicituds)
  end

  def show
    respond_with(@solicitud)
  end

  def new
    @solicitud = Solicitud.new
    @implementos = Implemento.where('piezas > ?', 1)
    respond_with(@solicitud)
  end

  def edit
  end

  def create
    @solicitud = Solicitud.new(solicitud_params)
    @solicitud.save
    #respond_with(@solicitud)
    redirect_to '/welcome/thankyou'
  end

  def update
    @solicitud.update(solicitud_params)
    respond_with(@solicitud)
  end

  def destroy
    @solicitud.destroy
    respond_with(@solicitud)
  end

  private
    def set_solicitud
      @solicitud = Solicitud.find(params[:id])
    end

    def solicitud_params
      params.require(:solicitud).permit(:solicitante_id, :departamento, :municipio,
                                        implementos_attributes: [:id, :name, :piezas, :_destroy],
                                        :comunidades => [])
    end
end
