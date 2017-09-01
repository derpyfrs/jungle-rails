class UserMailer < ApplicationMailer
 default from: 'no-reply@jungle.com'

  def thankyou_email(order)
    mail(to: order.email, subject: 'Thank you for your order')
  end
end
