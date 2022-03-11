# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview
  def new_contact
    ContactMailer.with(name: "Benjamin Boisson", email: "benjbdk@gmail.com", object: "Salut", message: "ceci est mon message").new_contact
  end
end
