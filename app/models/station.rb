class Station < ApplicationRecord
  belongs_to :apartment, inverse_of: :stations
end
