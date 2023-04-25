class Membership < ApplicationRecord
    belongs_to :gym
    belongs_to :client

    validates :client_id, uniqueness: true, presence: true
    validates :gym_id, presence: true
    validates :charge, presence: true
end
