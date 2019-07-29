# frozen_string_literal: true

class InvitationsController < ApplicationController
  before_action :redirect_to_root, if: :user_signed_in?

  def show
    @user = User.find_by(invite_token: token, invite_accepted_at: nil)

    if @user.nil?
      redirect_to new_user_session_path, alert: I18n.t('errors.invitations.not_valid')
    end
  end

  def update
    service = AcceptInvitation.new(token, user_params)

    if service.perform
      sign_in(service.user, scope: :user)

      redirect_to root_path
    else
      @user = service.user

      flash.now[:alert] = @user.errors.full_messages
      render :show
    end
  end

  private

  def redirect_to_root
    redirect_to root_path
  end

  def token
    params[:id]
  end

  def user_params
    params.require(:user).permit(
      :first_name, :last_name, :password, :password_confirmation
    )
  end
end
