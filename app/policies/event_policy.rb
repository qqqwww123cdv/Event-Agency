class EventPolicy < ApplicationPolicy
  attr_reader :user, :event

  def create?
    user.admin? || user.owner?
  end

  def update?
    user.admin? || user.owner?
  end
end