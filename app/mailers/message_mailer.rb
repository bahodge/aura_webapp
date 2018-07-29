class MessageMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.message_mailer.contact_me.subject
  #
  def contact_me(message)
    @greeting = "General Kenobi!"

    mail to: "batman.is.a.rainbow@gmail.com", from: message.email
  end
end
