class FactorialsController < ApplicationController
  rescue_from ArgumentError, with: :render_bad_request

  def show
    n = Integer(params[:n])
    result = MathUtils.factorials(n)
    render json: { result: result } 
  end
end