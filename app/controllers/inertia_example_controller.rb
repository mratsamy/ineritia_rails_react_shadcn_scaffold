# frozen_string_literal: true

class InertiaExampleController < ApplicationController
  def index
    render inertia: "v0/InertiaExample", props: {
      name: params.fetch(:name, "World")
    }
  end
end
