class Notifier < ActionMailer::Base
  default from: "FMS <admin@fms.com>"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.contact.subject
  #
  def contact(contact)
    @contact = contact

    mail to: "kmoralee1@gmail.com", subject: "FMS Contact Form"
  end
end
