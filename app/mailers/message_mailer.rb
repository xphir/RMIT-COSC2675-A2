class MessageMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.message_mailer.contact_us.subject
  #
  def contact_us(message)
    @body = message.body

    mail to: "s3530160@student.rmit.edu.au", from: message.email
  end
end