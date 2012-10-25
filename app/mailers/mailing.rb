# encoding: UTF-8

class Mailing < ActionMailer::Base
  default from: "fanpage@thatgirl.com.br"
  
  def notifies_admin(newsletter_user)
    @newsletter_user = newsletter_user
    mail(:to => "sac@thatgirl.com.br", :subject => "Nova inscrição newsletter - Fanpage", cc: "mail@theob.me")
  end
end
