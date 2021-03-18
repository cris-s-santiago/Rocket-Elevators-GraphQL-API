module Types
  class ElevatorType < Types::BaseObject
    field :id, ID, null: false
    field :serial_number, String, null: true
    field :model, String, null: true
    field :building_type, String, null: true
    field :status, String, null: true
    field :date_of_commissioning, GraphQL::Types::ISO8601Date, null: true
    field :date_of_last_inspection, GraphQL::Types::ISO8601Date, null: true
    field :certificate_of_inspection, String, null: true
    field :information, String, null: true
    field :notes, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :column_id, Integer, null: true
  end
end
