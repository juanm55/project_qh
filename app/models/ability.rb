class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
  
#    MEGAADMIN
    if user.role?('megaadmin')
      can :manage, :all
    end
    
#    ADMIN
    if user.role?('admin') || user.role?('megaadmin')
      can :manage, Place
      can :manage, Cplace
      can :manage, Copen
      can :manage, Cmoney
      can :manage, Address
      can :manage, Categorization
      can :manage, User do |user|
        !user.role?('megaadmin') || !user.role?('admin')
      end
      can :upgrade_to_owner, User
    end
    
#    OWNER
    if user.role?('owner') || user.role?('admin') || user.role?('megaadmin')
      can :manage, Place do |place|#only the owner can manage his place
        place.owner_id == user.id
      end
      can :manage, Address do |address|#only the owner may manage his places' address
        address.place.owner_id == user.id
      end
      can :manage, Categorization do |categorization|#only the owner may manage his places' categorization
        categorization.place.owner_id == user.id
      end
    end
    
#    USER OR ANONYMOUS
    if user.role?(nil) || user.role?('user') || user.role?('owner') || user.role('admin') || user.role?('megaadmin')
      can :read, Place
      can :read, User do |user|
        user.role?('user') || user.role?('owner')
      end
      can :manage, User do |theuser|
        theuser.id == user.id
      end
    end
  end
end
