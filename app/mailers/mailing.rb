# encoding: UTF-8

class Mailing < ActionMailer::Base
  default from: "test@theob.me"
  
  def notifies_admin(newsletter_user)
    @newsletter_user = newsletter_user
    mail(:to => @newsletter_user.email, :subject => "Nova inscrição newsletter - Fanpage")
  end
end
