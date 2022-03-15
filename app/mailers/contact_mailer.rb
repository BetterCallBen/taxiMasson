class ContactMailer < ApplicationMailer
  def new_contact
    @contact = params[:contact]
    @name = @contact.name
    @phone = @contact.phone
    @message = @contact.message
    mail(
      to: "benjbdk@gmail.com",
      subject: "Un client t'as envoyé un message"
    )
  end
end
