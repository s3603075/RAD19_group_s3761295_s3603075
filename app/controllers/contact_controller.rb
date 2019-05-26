class ContactController < ApplicationController
  def index
    @contact = Contact.new
  end
  
  def create
    @contact = Contact.new(contact_params)
    if @contact.save
       ContactMailer.contact_email(@contact).deliver
       flash[:success] = "Email sent"
       redirect_to contact_index_path
    else
      render 'index'
    end
  end
  
  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
