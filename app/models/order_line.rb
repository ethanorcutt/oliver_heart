class OrderLine < ApplicationRecord
  belongs_to :order
  belongs_to :item
  belongs_to :order_line_status
  after_find :check_status
  has_one :state, through: :order



  def check_status
    logger.warn "Check Status Method touched"
    logger.warn self.order_line_status_id
    if self.order_line_status_id == 1
      self.update(quantity_fulfilled: 0)
    elsif self.order_line_status_id == 3
      self.update(quantity_fulfilled: self.qty)
    end
  end
end
