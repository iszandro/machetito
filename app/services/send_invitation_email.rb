# frozen_string_literal: true

module SendInvitationEmail
  module_function

  def perform_later(user_id)
    delay.perform(user_id)
  end

  def perform
    user = User.find(user_id)
    UserMailer.with(email: user.email, invite_token: user.invite_token).invitation_email.deliver_now
  end
end
