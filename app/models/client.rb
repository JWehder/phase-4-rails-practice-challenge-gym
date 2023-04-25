class Client < ApplicationRecord
    has_many :memberships
    has_many :gyms, through: :memberships

    def total_membership_cost
        self.memberships
        # total_cost = self.memberships.sum { |membership| membership[:cost] }
    end
end
