class MunicipiosController < ApplicationController
  before_action :set_municipio, only: [:show, :edit, :update, :destroy]

  def index
    @municipios = Municipio.all
    respond_with(@municipios)
  end

  def show
    respond_with(@municipio)
  end

  def new
    @municipio = Municipio.new
    respond_with(@municipio)
  end

  def edit
  end

  def create
    @municipio = Municipio.new(municipio_params)
    @municipio.save
    respond_with(@municipio)
  end

  def update
    @municipio.update(municipio_params)
    respond_with(@municipio)
  end

  def destroy
    @municipio.destroy
    respond_with(@municipio)
  end

  private
    def set_municipio
      @municipio = Municipio.find(params[:id])
    end

    def municipio_params
      params.require(:municipio).permit(:name, :departamento_id)
    end
end
