class Membership < ApplicationRecord
    belongs_to :gym
    belongs_to :client
  
    validates :charge, numericality: {greater_than_or_equal_to:1}
    validates :client_id, uniqueness: { scope: :gym_id, message: "has already a membership with this gym." }
  end