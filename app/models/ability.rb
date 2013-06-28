class Ability
  include CanCan::Ability

  def initialize user
    user ||= User.new # guest access
    can :manage, Post, user_id: user.id
    can :read, Post
  end

end