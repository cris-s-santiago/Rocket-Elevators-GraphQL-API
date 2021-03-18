module Types
  class BuildingType < Types::BaseObject
    field :id, ID, null: false
    field :full_name_of_the_building_administrator, String, null: true
    field :email_of_the_administrator_of_the_building, String, null: true
    field :phone_number_of_the_building_administrator, String, null: true
    field :full_name_of_the_technical_contact_for_the_building, String, null: true
    field :technical_contact_email_for_the_building, String, null: true
    field :technical_contact_phone_for_the_building, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :customer_id, Integer, null: true
    field :address_id, Integer, null: true
    field :fact_intervention, [FactInterventionType], null: true
    field :building_details, BuildingDetailType, null: true

    #   We need to create our associations below as well as nested queries


    field :intervention, [FactInterventionType], null: true
    def interventions
      object.fact_intervention.all
    end

    field :customer, CustomerType, null: true
    def customer  
      Customer.find(object.customer_id)
    end

  end
end
