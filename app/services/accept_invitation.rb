# frozen_string_literal: true

class AcceptInvitation
  attr_reader :user, :params

  def initialize(token, params)
    @user = User.find_by!(invite_token: token)
    @params = params
  end

  def perform
    if user.invite_accepted?
      user.errors.add(:base, I18n.t('errors.invitations.already_accepted'))
      return false
    end

    user.update_attributes(params.merge(invite_accepted_at: Time.now.utc))
  end
end
