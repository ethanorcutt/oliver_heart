module OrdersHelper
  def total_class(order)
    if order.total > 1000
      "bold-me-green"
    elsif order.total > 500
      "bold-me"
    end

  end
end
