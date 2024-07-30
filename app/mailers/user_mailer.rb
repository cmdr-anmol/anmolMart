class UserMailer < ApplicationMailer
  def reset_password_instructions(record, token, opts={})
    @token = token
    @resource = record
    devise_mail(record, :reset_password_instructions, opts)
  end
end
