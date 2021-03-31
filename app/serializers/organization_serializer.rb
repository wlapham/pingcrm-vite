# frozen_string_literal: true

# Public: Used in the index page.
class OrganizationSerializer < BaseSerializer
  attributes(:id, :name, :phone, :city, :deleted_at)
end
