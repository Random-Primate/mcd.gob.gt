class ReportesController < ApplicationController
  respond_to :html, :xlsx

  def transparencia
    # Searching algo
    if params[:search]
      min = params[:search].downcase
    else
      min = params[:search]
    end
    @solicituds = Solicitud.search(min).paginate(:page => params[:page], :per_page => 20).order(created_at: :desc)
  end

  def transparencia_show
    @solicitud = Solicitud.find(params[:id])
    respond_with(@solicitud)
  end

  def send_mail
    NewSolicitud.nueva_solicitud.deliver
  end

  def direccion
    @solicituds = Solicitud.all
  end

end
