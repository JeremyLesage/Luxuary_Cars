class ContactMailer < ApplicationMailer
    def contact_mail(contact)
      @contact = contact
      mail to:"Mon adresse email", subject: "Nous contacter"
    end
  end