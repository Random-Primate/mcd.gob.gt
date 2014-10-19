class ExpedientesController < ApplicationController
  before_action :set_expediente, only: [:show, :edit, :update, :destroy]

  def index
    @expedientes = Expediente.all
    respond_with(@expedientes)
  end

  def show
    respond_with(@expediente)
  end

  def new
    @expediente = Expediente.new
    respond_with(@expediente)
  end

  def edit
  end

  def create
    @expediente = Expediente.new(expediente_params)
    @expediente.save
    respond_with(@expediente)
  end

  def update
    @expediente.update(expediente_params)
    respond_with(@expediente)
  end

  def destroy
    @expediente.destroy
    respond_with(@expediente)
  end

  private
    def set_expediente
      @expediente = Expediente.find(params[:id])
    end

    def expediente_params
      params.require(:expediente).permit(:num_gestion, :num_exp)
    end
end
