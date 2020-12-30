module Types
    class AuthenticationProviderCredentialsInput < BaseInputObject

        grahql_name 'AUTHENTICATION_PROVIDER_CREDENTIALS'

        argument :email, String, required: true
        argument :password, String, required: true
    end
end