# frozen_string_literal: true

# Public: Used in the index page.
class ContactSerializer < BaseSerializer
  attributes(:id, :name, :phone, :city, :deleted_at)

  has_one :organization, serializer: ModelSerializer
end
