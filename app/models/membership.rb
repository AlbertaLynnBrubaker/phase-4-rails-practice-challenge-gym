class Membership < ApplicationRecord
  belongs_to :gym
  belongs_to :client

  validates :charge, :gym, :client, presence: true
  validates :client, uniqueness: {scope: :gym}
end
