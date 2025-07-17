# frozen_string_literal: true

class InertiaExampleController < ApplicationController
  allow_unauthenticated_access

  def index
    render inertia: "v0/InertiaExample", props: {
      name: params.fetch(:name, "World")
    }
  end
end
