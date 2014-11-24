class ReportesController < ApplicationController
  respond_to :html, :xlsx

  def transparencia
    # Create an array
    sarr = Array.new
    Solicitud.all.each do |s|
      sarr = sarr.push(s.sol_s_name)
    end
    @s = sarr
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
    @implementos = @solicitud.implementos
    respond_with(@solicitud)
  end

  def send_mail
    NewSolicitud.nueva_solicitud.deliver
  end

  def direccion
    @solicituds = Solicitud.all
  end

end
