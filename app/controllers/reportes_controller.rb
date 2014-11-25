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
    @solicituds = Solicitud.search_delivered(min).paginate(:page => params[:page], :per_page => 20).order(created_at: :desc).where('state = ?', 'entregado')

    # Datasets
    @deps = Departamento.order(:id)
    labels_deps = @deps.map { |d| d.name }
    dt_values = []
    @deps.each do |ds|
      dt_values << ds.solicituds.where('state = ?', 'entregado').count
    end
    @dep_solis = {
        labels: labels_deps,
        datasets: [
            {
                label: 'Solicitudes',
                fillColor: 'rgba(151,187,205,0.5)',
                strokeColor: 'rgba(151,187,205,1)',
                pointColor: 'rgba(151,187,205,1)',
                pointStrokeColor: '#fff',
                data: dt_values
            }
        ]
    }

    # Implemento Search
    @implementos = Implemento.order(:name)

    # Date Search

    if params[:start_date]
      strt_date = Date.new((params[:start_date][:year]).to_i, (params[:start_date][:month]).to_i, (params[:start_date][:day]).to_i)
      ed_date = Date.new((params[:end_date][:year]).to_i, (params[:end_date][:month]).to_i, (params[:end_date][:day]).to_i)
    end
    @delivered_date = Solicitud.find_by_date(strt_date, ed_date).order(created_at: :desc).where('state = ?', 'entregado')
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
