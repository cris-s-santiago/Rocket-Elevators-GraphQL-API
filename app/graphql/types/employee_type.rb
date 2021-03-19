module Types
  class EmployeeType < Types::BaseObject
    field :id, ID, null: false
    field :first_name, String, null: true
    field :last_name, String, null: true
    field :title, String, null: true
    field :email, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :user_id, Integer, null: true

    field :fact_intervention, Types::FactInterventionType, null: true    
    def fact_intervention   
      FactIntervention.find_by(employee_id: object.id)   
    end
  end
end
