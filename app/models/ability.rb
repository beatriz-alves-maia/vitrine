# /app/models/ability.rb

class Ability
  include CanCan::Ability

  def initialize(user)
    if user
      if user.kind == 'salesman'
        can :access, :rails_admin
        can :dashboard
        can :manage, Service, user_id: user.id
      
      elsif user.kind == 'manager'
        can :manage, :all
      end
    end
  end
end