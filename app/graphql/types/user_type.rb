module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :firstName, String, null: false
    field :lastName, String, null: false
    field :email, String, null: false
    field :username, String, null: false
    field :profile_pic, String, null: false
  end
end
