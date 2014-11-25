class UserDashboardController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user
    @solicitudes = Solicitud.order(created_at: :desc)
    # Dataset Departamento
    @departamentos = Departamento.order(:id)
    labels_deps = @departamentos.map { |d| d.name }
    dt_values = []
    @departamentos.each do |ds|
      dt_values << ds.solicituds.count
    end
    @deps_solis = {
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
    # Implementos
    @idelivered = 0
    @ireserved = 0
    @iavailable = 0
    @implementos = Implemento.all
    @implementos.each do |i|
      @idelivered += i.total_delivered
      @ireserved += i.total_reserved
      @iavailable += i.available
    end
    @dataDisp = [
        {
            value: @iavailable,
            color: "#46BFBD",
            highlight: "#5AD3D1",
            label: 'Disponibles'
        },
        {
            value: @ireserved,
            color: "#FDB45C",
            highlight: "#FFC870",
            label: 'Reservados'
        },
        {
            value: @idelivered,
            color: "#949FB1",
            highlight: "#A8B3C5",
            label: 'No Disponibles'
        }
    ]

    # Dataset Solicitudes Estado
    @dataState = [
        {
            value: @solicitudes.where('state=?', 'rechazado').count,
            color:"#F7464A",
            highlight: "#FF5A5E",
            label: 'Rechazado'
        },
        {
            value: @solicitudes.where('state=?', 'reservado').count,
            color: "#46BFBD",
            highlight: "#5AD3D1",
            label: 'Reservado'
        },
        {
            value: @solicitudes.where('state=?', 'pendiente').count,
            color: "#FDB45C",
            highlight: "#FFC870",
            label: 'Pendiente'
        },
        {
            value: @solicitudes.where('state=?', 'confirmado').count,
            color: "#949FB1",
            highlight: "#A8B3C5",
            label: 'Confirmado'
        },
        {
            value: @solicitudes.where('state=?', 'entregado').count,
            color: "#4D5360",
            highlight: "#616774",
            label: 'Entregado'
        }

    ]

  end

  def departamentos
    @departamentos = Departamento.order(:id)
  end

end
