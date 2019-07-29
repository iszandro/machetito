class User < ApplicationRecord
  has_secure_token :invite_token

  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable

  before_validation :create_default_password, on: :create

  private

  def create_default_password
    self.password ||= Devise.friendly_token
  end
end
