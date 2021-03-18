module Types
  class FactInterventionsType < Types::BaseObject
    field :id, ID, null: false
    field :employee_id, Integer, null: false
    field :building_id, Integer, null: false
    field :battery_id, Integer, null: false
    field :column_id, Integer, null: false
    field :elevator_id, Integer, null: false
    field :start_of_intervention, GraphQL::Types::ISO8601DateTime, null: false
    field :end_of_intervention, GraphQL::Types::ISO8601DateTime, null: false
    field :result, String, null: true
    field :report, String, null: true
    field :status, String, null: true
    
  end
end
