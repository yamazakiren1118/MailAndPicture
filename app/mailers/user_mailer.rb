class UserMailer < ApplicationMailer
  def post_mail(user)
    @user = user
    mail(from:'yamazakiren1118@yahoo.co.jp',to: @user[:email],subject: 'メールを送信')
  end
end
