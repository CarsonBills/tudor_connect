class UserMailer < ActionMailer::Base
  default from: "notifications@example.com"

  def password_reset(user, password)
    @user = user
    @random_password = password
    mail(to: @user.email, subject: "Password Reset")
  end

  def new_memo(building)
    @recipients = building.users
    emails = @recipients.collect(&:email).join(",")
    mail(:to => emails, :subject => "Tudor Connect: A new memo has been posted to #{building.address}.")
  end
end