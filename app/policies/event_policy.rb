class EventPolicy < ApplicationPolicy
  attr_reader :user, :event

  def create?
    user.admin?
  end

  def update?
    user.admin?
  end
end