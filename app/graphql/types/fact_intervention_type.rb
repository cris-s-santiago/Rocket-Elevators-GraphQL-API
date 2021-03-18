module Types
  class FactInterventionType < Types::BaseObject
    field :id, ID, null: false
    field :employee_id, Integer, null: true
    field :building_id, Integer, null: true
    field :battery_id, Integer, null: true
    field :column_id, Integer, null: true
    field :elevator_id, Integer, null: true
    field :start_of_intervention, GraphQL::Types::ISO8601DateTime, null: true
    field :end_of_intervention, GraphQL::Types::ISO8601DateTime, null: true
    field :result, String, null: true
    field :report, String, null: true
    field :status, String, null: true
  end
end
