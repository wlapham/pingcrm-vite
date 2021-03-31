# frozen_string_literal: true

# Public: Used in the index page.
class UserSerializer < BaseSerializer
  attributes(:id, :email, :name, :owner, :deleted_at)

  attribute def photo
    polymorphic_url(user.photo.variant(resize_to_fill: [64, 64])) if user.photo.attached?
  end

  attribute def can
    { edit_user: can?(:edit, user) }
  end
end
