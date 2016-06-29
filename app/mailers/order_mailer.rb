class OrderMailer < ApplicationMailer
  def notify_order_placed(order)
    @order        = order
    @user         = order.user
    @order_items  = @order.items
    @order_info   = @order.info

    mail(to: @user.email, subject: "[烘 Work]感謝您完成本次的下單，以下是您這次購覺明細#{order.token}")
  end
end
