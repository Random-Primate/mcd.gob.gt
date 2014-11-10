class SolicitedsController < ApplicationController
  before_action :set_solicited, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json

  def index
    @soliciteds = Solicited.all
    respond_with(@soliciteds)
  end

  def show
    respond_with(@solicited)
  end

  def new
    @solicited = Solicited.new
    respond_with(@solicited)
  end

  def edit
  end

  def create
    @solicited = Solicited.new(solicited_params)
    @solicited.save
    redirect_to controller: 'solicituds', action: 'show', id: @solicited.solicitud.id
  end

  def update
    @solicited.update(solicited_params)
    redirect_to controller: 'solicituds', action: 'show', id: @solicited.solicitud.id
  end

  def destroy
    @solicited.destroy
    respond_with(@solicited)
  end

  private
    def set_solicited
      @solicited = Solicited.find(params[:id])
    end

    def solicited_params
      params.require(:solicited).permit(:amount, :solicitud_id, :implemento_id,
                                        implemento_attributes: [:id, :name, :piezas, :description,
                                                                :available, :reserved, :solicited],
                                        implementos_attribute: [:id, :name, :piezas, :description,
                                                                :available, :reserved, :solicited],
                                        solicitud_attributes: []
                                       )
    end
end
