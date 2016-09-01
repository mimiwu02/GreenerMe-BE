# Preview all emails at http://localhost:3000/rails/mailers/example_mailer
class ExampleMailerPreview < ActionMailer::Preview
  def greenerme_welcome_preview
    ExampleMailer.greenerme_welcome(User.first)
  end
end
