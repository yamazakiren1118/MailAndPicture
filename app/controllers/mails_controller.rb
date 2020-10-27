class MailsController < ApplicationController
  def new
  end
  def create
    @user = params[:user]
    UserMailer.post_mail(@user).deliver_now
  end
end
