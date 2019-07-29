class User < ApplicationRecord
  has_secure_token :invite_token

  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable

  before_validation :create_default_password, on: :create

  def invite_accepted?
    !invite_accepted_at.nil?
  end

  private

  def create_default_password
    self.password ||= Devise.friendly_token
  end
end
