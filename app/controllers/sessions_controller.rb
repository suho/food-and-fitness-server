class SessionsController < DeviseTokenAuth::SessionsController
    def render_create_success
      render json: @resource, serializer: UserSerializer, root: 'data'
    end
end
