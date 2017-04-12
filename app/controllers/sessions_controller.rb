class SessionsController < DeviseTokenAuth::SessionsController
    def render_create_success
      render json: @resource, status: :created, serializer: UserSerializer, root: 'data'
    end
end
