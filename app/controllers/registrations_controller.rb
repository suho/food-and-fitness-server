class RegistrationsController < DeviseTokenAuth::RegistrationsController
    def render_create_success
      render json: @resource, status: :created, serializer: UserSerializer, root: 'data'
    end

    def render_create_error
      render json: {
        errors: [
          {
            key: 'new_error',
            value: 'Email Already Exists'
          }
        ]
      }, status: 422
    end

    def render_create_error_email_already_exists
      render json: {
        errors: [
          {
            key: 'new_error',
            value: 'Email Already Exists'
          }
        ]
      }, status: 422
    end
end
