module ApplicationHelper
  def boolean_helper(bool)
    if bool
      return 'Available'
    else
      return 'Unavailable'
    end
  end


end
