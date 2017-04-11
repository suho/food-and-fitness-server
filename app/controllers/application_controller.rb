class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def render_errors(resource)
      render json: ErrorSerializer.serialize(resource), status: :unprocessable_entity
    end

  def configure_permitted_parameters
    permitted_parameters = devise_parameter_sanitizer.instance_values['permitted']
    permitted_parameters[:sign_up] << :name
    permitted_parameters[:sign_up] << :birthday
    permitted_parameters[:sign_up] << :gender
    permitted_parameters[:sign_up] << :height
    permitted_parameters[:sign_up] << :weight
    permitted_parameters[:sign_up] << :goal_id
    permitted_parameters[:sign_up] << :active_id
    permitted_parameters[:account_update] << :name
    permitted_parameters[:account_update] << :birthday
    permitted_parameters[:account_update] << :gender
    permitted_parameters[:account_update] << :height
    permitted_parameters[:account_update] << :weight
    permitted_parameters[:account_update] << :goal_id
    permitted_parameters[:account_update] << :active_id
  end
end
