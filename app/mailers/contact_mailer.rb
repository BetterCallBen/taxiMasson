class ContactMailer < ApplicationMailer
  def new_contact
    @name = params[:name]
    @email = params[:email]
    @object = params[:object]
    @message = params[:message]
    mail(
      to: "bcbenjb@gmail.com",
      from: @email,
      subject: @object
    )
  end
end
