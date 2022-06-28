class Apartment < ApplicationRecord
  has_many :stations, dependent: :destroy, inverse_of: :apartment
  accepts_nested_attributes_for :stations, allow_destroy: true, reject_if: :all_blank
end
