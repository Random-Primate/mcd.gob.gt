crumb :root do
  link 'Inicio', root_path
end

crumb :dashboard do |dashboard|
  link 'Panel de Control', user_dashboard_show_path(dashboard)
  parent :root
end

crumb :departamentos do
  link 'Departamentos', departamentos_path
  parent :dashboard
end

crumb :departamento do |departamento|
  link departamento.name, departamento_path(departamento)
  parent :departamentos
end

crumb :municipios do
  link 'Municipios', municipios_path
  parent :dashboard
end

crumb :idiomas do
  link 'Idiomas', idiomas_path
  parent :dashboard
end

crumb :pueblos do
  link 'Pueblos', pueblos_path
  parent :dashboard
end

crumb :users do
  link 'Usuarios', users_path
  parent :dashboard
end

crumb :implementos do
  link 'Implementos', implementos_path
  parent :dashboard
end

crumb :solicitudes do
  link 'Solicitudes', solicituds_path
  parent :dashboard
end

crumb :solicitud do |solicitud|
  link solicitud.correlativo, solicitud_path(solicitud)
  parent :solicitudes
end

crumb :beneficiarios do
  link 'Beneficiarios', beneficiarios_path
  parent :dashboard
end

crumb :beneficiario do |beneficiario|
  name = beneficiario.first_last_name + ', ' + beneficiario.first_name + '.'
  link name, beneficiario_path(beneficiario)
  parent :beneficiarios
end

crumb :transparencia do
  link 'Transparencia', reportes_transparencia_path
  parent :root
end

crumb :transparencia_show do |show|
  link show.correlativo, reporte_perfil_transparencia_path
  parent :transparencia
end

crumb :dash_dep do
  link 'Departamentos', dash_deps_path
  parent :dashboard
end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).