class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
    alias_action :create, :read, :update, :destroy, to: :crud
    alias_action :create_user, :new_user, :edit_user, :update_user, :destroy_user, to: :crud_user

    user ||= User.new # guest user (not logged in)
    if user.admin?
      can :access, :rails_admin         # only allow admin users to access Rails Admin
      can :manage, :all
    elsif user.has_role? :supervisor
      can :read, Solicitud
      can :read, Implemento
      can :read, Beneficiario
    elsif user.has_role? :implementacion
      can :read, Solicitud
      can :read, Implemento
      can :read, Beneficiario
      can :read, Article
      can :read, Pueblo
      can :read, Idioma
      can [:crud, :crud_user], User
      #cannot [:read], User, roles: { id: 5 }
      cannot [:create, :edit], User, roles: { id: 3 } # Can't view or edit other implementacion roles
      cannot [:crud], User, roles: { id: 1 }   # Can't
    elsif user.has_role? :ventanilla
      can [:read, :update, :create], Solicitud
    elsif user
      can :create, Solicitud
      cannot :crud, User               # Can still block registration site
    end
    #cannot :destroy, User do |usr|    # user can't destroy himself
    #  usr == user
    #end

  end
end
