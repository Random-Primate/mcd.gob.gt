class SolicitedsController < ApplicationController
  before_action :set_solicited, only: [:show, :edit, :update, :destroy]

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
    respond_with(@solicited)
  end

  def update
    @solicited.update(solicited_params)
    respond_with(@solicited)
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
