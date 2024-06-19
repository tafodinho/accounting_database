module Motor
  class Ability
    include CanCan::Ability

    def initialize(user, _request)
      if user != nil
        if user.admin
          can :manage, :all
        else
          can :manage, :all
          cannot :read, User
        end
      end

    end

    def resource_abilities
      can :read, Product, Product.column_names.map(&:to_sym) - [:price]
      can :update, Product, [:name]
      can :manage, Customer
      can :read, Order, { customer: { country_code: 'US' } }
      can :update, Order,
          Order.column_names.map(&:to_sym) - [:customer_id],
          { customer: { country_code: 'US' }, status: 'pending' }
      can :mark_as_shipped, Order, { status: 'pending' }
      can :manage, Country
      can :manage, Note
    end

    def motor_abilities
      can :read, Motor::Tag
      can :read, ActiveStorage::Attachment
      can :read, Motor::Form, %i[name tags], tags: { name: %w[Orders Customers] }
      can :manage, Motor::Form, tags: { name: %w[Orders Customers] }
      can :manage, Motor::Query
      can :read, Motor::Dashboard, tags: { name: 'Customers' }
      can :read, Motor::Alert, tags: { name: 'Customers' }
    end
  end
end