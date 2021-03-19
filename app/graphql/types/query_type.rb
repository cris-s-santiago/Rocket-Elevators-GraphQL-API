module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # Connections

    field :address, [AddressType], null: false,
    description: "For the address queries"
    def address
     Address.all
    end

    field :buildings, [BuildingType], null: false,
      description: "For the building queries"
    def buildings
      Building.all
    end

    field :building, BuildingType, null: false do
      argument :id, ID, required: true
    end
    def building(id:)
      building = Building.find(id)  
    end
    field :building_details, [BuildingDetailType], null: false,
    description: "For the building details' queries"
    def building_details
      BuildingDetail.all
    end

    field :customer, [CustomerType], null: false,
    description: "For the customer queries"
    def customer
      Customer.all
    end

    field :employee, [EmployeeType], null: false,
    description: "For the employee queries"
    def employee
      Employee.all
    end

    field :employee, EmployeeType, null: false do
      argument :id, ID, required: true
    end
    def employee(id:)
      employee = Employee.find(id)  
    end

    field :fact_intervention, [FactInterventionType], null: false,
    description: "For the fact intervention queries"
    def fact_intervention
      FactIntervention.all
    end
  
    field :fact_intervention, FactInterventionType, null: false do
      argument :id, ID, required: true
    end
    def fact_intervention(id:)
      FactIntervention.find(id)
    end
  end
end
