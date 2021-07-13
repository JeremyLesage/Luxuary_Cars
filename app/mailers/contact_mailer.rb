class ContactMailer < ApplicationMailer
    def contact_mail(contact)
      @contact = contact
      mail to:"lesage1510@gmail.com", subject: "Nous contacter"
    end
  end