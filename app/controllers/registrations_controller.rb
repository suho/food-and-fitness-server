class RegistrationsController < DeviseTokenAuth::RegistrationsController
    def render_create_success
      history = UserHistory.new
      history.height = current_user.height
      history.weight = current_user.weight
      history.user_id = current_user.id
      history.goal_id = current_user.goal_id
      history.active_id = current_user.active_id
      if history.save 
        render json: @resource, status: :created, serializer: UserSerializer, root: 'data'
      else
        render json: {
        errors: [
          {
            key: 'history_save',
            value: 'Have Error When save History'
          }
        ]
      }, status: 422
      end
    end

    def render_update_success
      history = UserHistory.new
      history.height = current_user.height
      history.weight = current_user.weight
      history.user_id = current_user.id
      history.goal_id = current_user.goal_id
      history.active_id = current_user.active_id
      if history.save 
        render json: @resource, status: :created, serializer: UserSerializer, root: 'data'
      else
        render json: {
        errors: [
          {
            key: 'history_save',
            value: 'Have Error When save History'
          }
        ]
      }, status: 422
      end
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
