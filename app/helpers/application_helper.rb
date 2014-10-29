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
    user.first_name ||= ''
    user.second_first_name ||= ''#second_name
    user.first_last_name ||= ''#last_nae
    user.second_last_name ||= ''#second_last_name

    user.first_name + ' ' + user.second_first_name + ' ' + user.first_last_name + ' ' + second_last_name
  end

  # Defines global method of solicitante's complete name
  def sol_full_name(user)
    user.sol_f_name + ' ' + user.sol_fl_name
  end

end
