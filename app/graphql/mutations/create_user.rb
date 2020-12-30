module Mutations
    class CreateUser < BaseMutation

        class AuthenticationProviderSignupData < Types::BaseInputObject
            argument :credentials, Types::AuthenticationProviderCredentialsInput, required: false
        end

        argument :name, String, required: true
        argument :authentication_provider, AuthenticationProviderSignupData, required: true

        type Types::UserType

        def resolve(name: nil, authentication_provider: nil)
            User.create!(
                name: name,
                email: authentication_provider&.[](:credentials)&.[](:email),
                password: authentication_provider&.[](:credentials)&.[](:password)
            )
        end
    end
end