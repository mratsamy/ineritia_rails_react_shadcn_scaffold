class BaseSerializer < Oj::Serializer
  include TypesFromSerializers::DSL
  include ActionView::Helpers::NumberHelper
  include Rails.application.routes.url_helpers

  # Assumes that the majority of the serialized data is consumed by JS
  transform_keys :camelize

  # docs, https://github.com/ElMassimo/oj_serializers
  def expand_raw
    # ['actor', 'replies.actor.profile_image']
    options.dig(:expand) || []
  end

  def expand
    # ['actor', 'replies']
    expand_raw.map { |e| e.split(".").first }
  end

  def expand_children(parent_key)
    # 'replies.actor.profile_image'
    parent_entry = expand_raw.find { |e| e.include?(parent_key) }
    return [] if parent_entry.nil?
    # ['actor.profile_image']
    Array(parent_entry.split(".").filter { |e| e != parent_key }.join("."))
  end

  def default_url_options
    Rails.application.routes.default_url_options
  end
end
