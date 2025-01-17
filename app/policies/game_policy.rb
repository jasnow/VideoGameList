# typed: true
class GamePolicy < ApplicationPolicy
  attr_reader :user, :game

  def initialize(user, game)
    @user = user
    @game = game
  end

  def index?
    true
  end

  def show?
    true
  end

  def create?
    user.present?
  end

  def update?
    user.present?
  end

  def destroy?
    user.present?
  end

  def search?
    user.present?
  end

  def remove_cover?
    user.present?
  end

  def favorite?
    user.present?
  end

  def unfavorite?
    user.present?
  end
end
