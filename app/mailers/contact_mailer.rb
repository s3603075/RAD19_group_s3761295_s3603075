class ContactMailer < ApplicationMailer
  default from: "admin@example.com"
  
  def contact_email(contact)
    @contact = contact
    #abort @contact.inspect
    mail( :to => "danny.ho9765@gmail.com", :subject => "You Have a Contact Message From Your Website")
  end
end
