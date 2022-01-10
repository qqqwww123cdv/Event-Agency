class ServicePolicy < ApplicationPolicy
  attr_reader :user, :service

  def create?
    user.admin? || user.owner?
  end

  def update?
    user.admin? || user.owner?
  end
end