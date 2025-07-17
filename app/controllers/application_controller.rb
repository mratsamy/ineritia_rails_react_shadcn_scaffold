class ApplicationController < ActionController::Base
  include Authentication
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  # Allows for sharing the props across all pages
  inertia_share do
    {
      current_user: current_user? ? UserSerializer.render(current_user) : {}
    }
  end
end
