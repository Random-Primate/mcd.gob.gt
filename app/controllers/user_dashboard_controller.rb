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

  end

end
