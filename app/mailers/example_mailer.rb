class ExampleMailer < ApplicationMailer
  default from: "greenerme20@gmail.com"

  def greenerme_welcome(user)
    @user = user
    mail(to: @user, subject: 'Welcome to the Greener Me App!')
  end
end
