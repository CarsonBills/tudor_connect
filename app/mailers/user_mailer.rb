class UserMailer < ActionMailer::Base
  default from: "notifications@example.com"

  def password_reset(user, password)
    @user = user
    @random_password = password
    mail(to: @user.email, subject: "Password Reset")
  end
end