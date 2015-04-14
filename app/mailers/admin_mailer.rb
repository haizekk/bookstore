class AdminMailer < ApplicationMailer
  default from: "no-reply@siteadmin.com"
  default to: "badoi.raluca@gmail.com"

  def new_user(user)
    @user = user
    mail(subject: "New User: #{user.email}")
  end

end
