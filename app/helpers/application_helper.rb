module ApplicationHelper

  # Global flash messages for bootstrap purposes
  def flash_class(type)
    case type
      when 'success'
        'alert-success'
      when 'error'
        'alert-danger'
      when 'alert'
        'alert-warning'
      when 'notice'
        'alert-info'
      else
        ''
    end
  end

  # Defines global method of user's complete name
  def full_name(user)
    user.first_name + ' ' + user.last_name
  end
end
