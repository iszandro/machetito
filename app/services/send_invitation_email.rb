# frozen_string_literal: true

module SendInvitationEmail
  module_function

  def perform_later(user_id)
    user = User.find(user_id)
    UserMailer.with(email: user.email, invite_token: user.invite_token).invitation_email.deliver_later
  end
end
