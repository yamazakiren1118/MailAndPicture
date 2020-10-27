class UserMailer < ApplicationMailer
  def post_mail(user)
    @user = user
    mail(from:'test@mail.com',to: @user[:email],subject: 'メールを送信')
  end
end
