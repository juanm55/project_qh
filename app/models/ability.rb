class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)

#    MEGAADMIN puede manejar todo
    if user.role?('megaadmin')
      can :manage, :all
#    ADMIN
    elsif user.role?('admin') || user.role?('megaadmin')
      can :manage, Place
      can :manage, Cplace
      can :manage, Copen
      can :manage, Cmoney
      can :manage, User do |user|
        !user.role?('megaadmin') || !user.role?('admin')
      end
      can :upgrade_to_owner, User
    
#    OWNER
    elsif user.role?('owner') || user.role?('admin') || user.role?('megaadmin')
      can :manage, Place do |place|
        place.owner_id == user.id
      end
    
#    USER OR ANONYMOUS
    elsif user.role?(nil) || user.role?('user') || user.role?('owner') || user.role('admin') || user.role?('megaadmin')
      can :read, Place
      can :read, User do |user|
        user.role?('user') || user.role?('owner')
      end
      can :index, Cplace
      can :index, Cmoney
      can :index, Copen
    end
  end
end
