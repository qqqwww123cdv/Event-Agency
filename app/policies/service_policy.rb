class ServicePolicy < ApplicationPolicy
  attr_reader :user, :service

  def create?
    user.owner?
  end

  def update?
    user.owner?
  end
end