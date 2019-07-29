# frozen_string_literal: true

class InviteUser
  def self.perform(email)
    if (user = User.create!(email: email))
      SendInvitationEmail.perform_later(user.id)
    end
  end
end
