class Mailing < ActionMailer::Base
  default from: "test@theob.me"
  
  def notifies_admin(newsletter_user)
    @newsletter_user = newsletter_user
    mail(:to => "mail@theob.me", :subject => "That Girl Newsletter - TESTE")
  end
end
