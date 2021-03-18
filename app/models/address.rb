class Address < ApplicationRecord
    has_one :customer, dependent: :destroy
    has_one :building, dependent: :destroy
end
