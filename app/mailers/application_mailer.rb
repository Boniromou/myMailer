class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'

  class UserMailer < ApplicationMailer
    @user = params[:user]
    @url = 'https://taskmanager0117.herokuapp.com/login'
    mail(to: @user.email, subject: "Welcome to Task Manager")
  end
end

