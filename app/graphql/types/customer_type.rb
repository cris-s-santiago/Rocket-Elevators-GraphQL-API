module Types
  class CustomerType < Types::BaseObject
    field :id, ID, null: false
    field :customers_creation_date, GraphQL::Types::ISO8601Date, null: true
    field :company_name, String, null: true
    field :full_name_of_company_contact, String, null: true
    field :company_contact_phone, String, null: true
    field :email_of_company_contact, String, null: true
    field :company_description, String, null: true
    field :full_name_of_service_technical_authority, String, null: true
    field :technical_authority_phone_for_service_, String, null: true
    field :technical_manager_email_for_service, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :user_id, Integer, null: true
    field :address_id, Integer, null: true
  end
end
