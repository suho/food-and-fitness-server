class SessionsController < DeviseTokenAuth::SessionsController
    def render_create_success
      bingding.pry
      render json: @resource, serializer: UserSerializer, root: 'data'
    end
end
