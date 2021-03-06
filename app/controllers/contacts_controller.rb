class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    ContactMailer.with(contact: @contact).new_contact.deliver_later if @contact.save
    redirect_to root_path
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :phone, :object, :message)
  end
end
