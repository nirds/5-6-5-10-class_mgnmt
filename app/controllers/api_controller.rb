class ApiController < ActionController::Base
  before_filter :check_token

private
  def check_token
    redirect_to root_path unless params[:token] == "Renee"
  end
end
