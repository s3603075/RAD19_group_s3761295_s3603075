class ContactMailer < ApplicationMailer
  default from: "admin@example.com"
  
  def contact_email(contact)
    @contact = contact
    mail( :to => "s360RADRMIT2019@gmail.com", :subject => "You Have a Contact Message From Your Website")
  end
end
