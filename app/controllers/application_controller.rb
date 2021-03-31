class ApplicationController < ActionController::Base
  include Auth

  include Pagy::Backend

  include InertiaCsrf
  include InertiaFlash
  include InertiaJson

  # Used in BaseSerializer.
  before_action { RequestLocals[:current_controller] = self }

  inertia_share auth: -> {
    {
      user: current_user.as_json(
        only: [ :id, :first_name, :last_name ],
        include: {
          account: {
            only: [ :id, :name ]
          }
        }
      )
    }
  }

  def paginate_data(items, serializer:)
    pagy, paged_items = pagy(items)
    { data: serializer.many(paged_items), meta: pagy_metadata(pagy) }
  end
end
