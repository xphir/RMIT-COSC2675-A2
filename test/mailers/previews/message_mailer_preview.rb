# Preview all emails at http://localhost:3000/rails/mailers/message_mailer
class MessageMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/message_mailer/contact_us
  def contact_us
    message = Message.new name: 'marflar', 
                          email: 'marflar@example.org',
                          body: 'This is the body of the email'

    MessageMailer.contact_us message
  end

end