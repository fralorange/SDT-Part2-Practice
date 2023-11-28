class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # not authorized

    if user.has_role? :carrier
      can :manage, Ticket, user_id: user.id
    else
      can :read, Ticket
    end
  end
end
