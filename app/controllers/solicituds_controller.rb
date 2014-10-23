class SolicitudsController < ApplicationController
  before_action :set_solicitud, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json, :xlsx

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
    @implementos = Implemento.where('piezas > ?', 1)
    if @solicitud.save
      redirect_to '/welcome/thankyou'
    else
      render action: 'new'
    end
    #respond_to do |format|
    #  if @book.save
    #    format.html { redirect_to @book, notice: 'Libro creado exitosamente.' }
    #    format.json { render action: 'show', status: :created, location: @book }
    #  else
    #    format.html { render action: 'new' }
    #    format.json { render json: @book.errors, status: :unprocessable_entity }
    #  end
    #respond_with(@solicitud)
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
      params.require(:solicitud).permit(:departamento, :disciplina, :municipio, :sol_f_name,
                                        :sol_s_name, :sol_fl_name, :sol_sl_name,
                                        :sol_cui, :sol_tel, :sol_email,
                                        implementos_attributes: [:id, :name, :piezas, :_destroy],
                                        beneficiarios_attributes: [:id, :cui, :first_name,
                                                                   :second_name, :second_first_name,
                                                                   :first_last_name, :menor,
                                                                   :second_last_name, :departamento,
                                                                   :municipio, :pueblo, :_destroy],
                                        :comunidades => [])
    end
end
