class UserSerializer < BaseSerializer
  attributes(
    :id,
    :email_address,
    :created_at,
    :updated_at
  )
end
