class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # not authorized

    if user.has_role? :carrier
      can :create, Ticket
      can [:read, :update, :destroy], Ticket do |ticket|
        ticket.users.include?(user)
      end
    else
      can :read, Ticket
      can :book, Ticket
      can :unbook, Ticket do |ticket|
        ticket.users.include?(user)
      end
    end
  end
end
