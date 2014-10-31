class SolicitudsController < ApplicationController
  before_action :authenticate_user!, except: [:new, :create]
  before_action :set_solicitud, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json, :xlsx

  def index
    @solicituds = Solicitud.search(params[:search]).paginate(:page => params[:page], :per_page => 20)
    respond_with(@solicituds)
  end

  def show
    respond_with(@solicitud)
  end

  def new
    @solicitud    =   Solicitud.new
    #@par = params
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
      @solicitud.save
      redirect_to controller: 'welcome', action: 'thankyou', id: @solicitud.id
    else
      render action: 'new'
    end
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
                                        :implemento_ids, :departamento_id, :municipio_id,
                                        beneficiarios_attributes: [:id, :cui, :first_name,
                                                                   :second_name, :second_first_name,
                                                                   :first_last_name, :menor,
                                                                   :second_last_name, :departamento,
                                                                   :municipio, :pueblo, :_destroy],
                                        :comunidades => [])
    end
end
