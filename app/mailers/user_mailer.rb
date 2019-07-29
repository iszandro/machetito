# frozen_string_literal: true

class UserMailer < ApplicationMailer
  def invitation_email
    email = params[:email]
    @invite_token = params[:invite_token]

    mail(to: email, subject: 'Invitation to machetito')
  end
end
