class SolicitudsController < ApplicationController
  before_action :authenticate_user!, except: [:new, :create]
  before_action :set_solicitud, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  respond_to :html, :json, :xlsx

  def index
    @solicituds = Solicitud.search(params[:search]).paginate(:page => params[:page], :per_page => 20).order(created_at: :desc)
    respond_with(@solicituds)
  end

  def show
    respond_with(@solicitud)
  end

  def new
    @solicitud    =   Solicitud.new
    @implementos  =   Implemento.all.where('piezas > ?', 1)
    @article_6    =   Article.find(6)
    @article_7    =   Article.find(7)
    respond_with(@solicitud)
  end

  def edit
  end

  def create
    @article_6    =   Article.find(6)
    @article_7    =   Article.find(7)
    @solicitud = Solicitud.new(solicitud_params)
    @implementos = Implemento.where('piezas > ?', 1)
    if @solicitud.save
      @solicitud.correlativo = set_correlativo(@solicitud)
      @solicitud.save                             # IS this necessary?
      redirect_to controller: 'welcome', action: 'thankyou', id: @solicitud.id
    else
      render action: 'new'
    end
  end

  def update
    @solicitud.update(solicitud_params)
    if params[:no_gestion] != '' && @solicitud.save
      flash[:notice] = 'Se ha confirmado la solicitud y asignado un número de gestión.'
      @solicitud.confirmar!
    end
    respond_with(@solicitud)
  end

  def destroy
    @solicitud.destroy
    respond_with(@solicitud)
  end

  def confirmar
    @solicitud = Solicitud.find(params[:id])
    @solicitud.confirmar!
    render 'show'
  end

  def reservar
    @solicitud = Solicitud.find(params[:id])
    @solicitud.reservar!
    render 'show'
  end

  def entregar
    @solicitud = Solicitud.find(params[:id])
    @solicitud.entregar!
    render 'show'
  end

  private
    def set_solicitud
      @solicitud = Solicitud.find(params[:id])
    end

    # Correlativo: Two random digits - Year - Three random digits - Month - Day
    #              - Three random digits - Solicitud ID
    def set_correlativo(sol)
      rand(10...100).to_s + sol.created_at.year.to_s[2..4] + rand(100...1000).to_s +
          sol.created_at.month.to_s + sol.created_at.day.to_s + rand(100...1000).to_s + sol.id.to_s
    end

    def solicitud_params
      params.require(:solicitud).permit(:disciplina, :sol_f_name,
                                        :sol_s_name, :sol_fl_name, :sol_sl_name,
                                        :sol_cui, :sol_tel, :sol_email, :correlativo,
                                        :departamento_id, :municipio_id, :implemento_ids,
                                        :entidad, :no_gestion, :implementos_ids, :implemento,
                                        :solicited, :implementos,
                                        soliciteds_attributes: [:solicited_id, :implemento_id,
                                                                :amount, implemento_attributes: [
                                                                :id, :name, :piezas, :description,
                                                                :available, :reserved, :solicited
                                                                ], implementos_attributes: [
                                                                :id, :name, :piezas, :description,
                                                                :available, :reserved, :solicited
                                                                ]],
                                        beneficiarios_attributes: [:id, :cui, :first_name,
                                                                   :second_name, :second_first_name,
                                                                   :first_last_name, :idioma,
                                                                   :second_last_name, :departamento,
                                                                   :municipio, :pueblo, :_destroy,
                                                                   :entidad, :birth_date,
                                                                   :no_partida_nacimiento,
                                                                   :folio_partida_nacimiento,
                                                                   :libro_partida_nacimiento
                                        ],
                                        comunidades: [])
    end
end
