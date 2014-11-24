class ReportesController < ApplicationController
  respond_to :html, :json, :xlsx

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

    # Datasets

    @labelsDeps = Departamento.order(:id).map { |d| d.name }
    @departamentos = Departamento.order(:id)
    @dep_solis = []
    @departamentos.each do |ds|
      @dep_solis <<
          {
              label: 'Solicitudes',
              fillColor: 'rgba(220,220,220,0.5)',
              strokeColor: 'rgba(220,220,220,0.8)',
              highlightFill: 'rgba(220,220,220,0.75)',
              highlightStroke: 'rgba(220,220,220,1)',
              data: [65, 59, 80, 81, 56, 55, 40]
          }
    end
  end

  def transparencia_show
    @solicitud = Solicitud.find(params[:id])
    @implementos = @solicitud.implementos
    @soliciteds = @solicitud.soliciteds.order(:amount)
    @chart = []
    @soliciteds.each do |s|
      @chart <<
          {
              value: s.amount,
              color: s.implemento.color,
              highlight: '#d3d3d3',
              label: s.implemento.name
          }
    end
    respond_with(@solicitud)
  end

  def send_mail
    NewSolicitud.nueva_solicitud.deliver
  end

  def direccion
    @solicituds = Solicitud.all
  end

end
