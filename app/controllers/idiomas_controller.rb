class IdiomasController < ApplicationController
  before_action :set_idioma, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json

  def index
    @idiomas = Idioma.paginate(:page => params[:page], :per_page => 10)
    respond_with(@idiomas)
  end

  def show
    respond_with(@idioma)
  end

  def new
    @idioma = Idioma.new
    respond_with(@idioma)
  end

  def edit
  end

  def create
    @idioma = Idioma.new(idioma_params)
    @idioma.save
    respond_with(@idioma)
  end

  def update
    @idioma.update(idioma_params)
    respond_with(@idioma)
  end

  def destroy
    @idioma.destroy
    respond_with(@idioma)
  end

  private
    def set_idioma
      @idioma = Idioma.find(params[:id])
    end

    def idioma_params
      params.require(:idioma).permit(:name)
    end
end
