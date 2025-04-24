class ApplicationController < ActionController::Base
  def render_bad_request(exception)
    render json: { error: exception.message }, status: :bad_request
  end
end
