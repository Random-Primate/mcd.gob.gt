class NewSolicitud < ActionMailer::Base
  default from: 'sys.implementos@vdr.gt'

  def nueva_solicitud(sol)
    @domain = 'http://implementacion.vdr.gt'
    @url = "/solicitud/solicitud/#{sol.id}"
    @vinculo = @domain + @url
    mail(to: 'elennio@hotmail.com', subject: 'Se ha generado una nueva solicitud.')
  end

end
