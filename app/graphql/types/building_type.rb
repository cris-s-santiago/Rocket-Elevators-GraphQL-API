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

#------------------ Retrieving customer information and the list of interventions that took place for a specific building ------------------#
    
    field :fact_intervention, FactInterventionType, null: true    
    def fact_intervention   
      FactIntervention.find_by(building_id: object.id)   
    end

    field :customer, CustomerType, null: true
    def customer  
      Customer.find(object.customer_id)
    end

#------------------ Retrieval of all interventions carried out by a specified employee with the buildings associated ------------------#
#---------------with these interventions including the details (Table BuildingDetails) associated with these buildings. ------------------#
    
    field :details, BuildingDetailType, null: true
    def details      
      BuildingDetail.where(building_id: object.id)[0]     
    end
  end
end
