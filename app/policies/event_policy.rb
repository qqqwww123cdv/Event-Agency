class EventPolicy < ApplicationPolicy
  attr_reader :user, :event

  def create?
    user.admin?
  end
end