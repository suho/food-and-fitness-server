class RegistrationsController < DeviseTokenAuth::RegistrationsController
    def render_create_success
      binding.pry
      render json: @resource, serializer: UserSerializer, root: 'data'
    end
end
