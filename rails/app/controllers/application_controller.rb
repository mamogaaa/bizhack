class ApplicationController < ActionController::API
  include Knock::Authenticable

  # rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  rescue_from ActiveRecord::RecordNotFound, with: :not_found
  before_action :set_default_request_format

  # rescue_from ActiveRecord::ActiveRecordError, with: :application_error
  # rescue_from Exception, with: :application_error

  def render_error(error, status)
    if error.is_a? Array
      error = error[0]
    end
    render json: {error: error}, status: status
  end

  def not_found(err = ActiveRecord::RecordNotFound.new("not found"))
    render_error(err.message || "not found", 404)
  end

  def application_error(err)
    render_error err.message, (err.respond_to?(:status) ? err.status : 500)
  end

  def bad_request_error(err)
    render_error err.message, 422
  end

  def user_not_authorized
    render_error("You are not allowed to do this.", 403)
  end

  def render_resource_error(resource)
    render_error(resource_error(resource), 422)
  end

  def resource_error(resource)
    resource.errors.full_messages[0]
  end

  private
  def set_default_request_format
    request.format = :json
  end
end