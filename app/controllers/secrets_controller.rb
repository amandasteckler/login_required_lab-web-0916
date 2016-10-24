class SecretsController < ApplicationController
  before_action :require_login
  # def show
  #   if session[:name] == nil || session[:name] == ""
  #     redirect_to login_path
  #   else
  #     @name = session[:name]
  #   end
  # end

  def show
    @name = session[:name]
  end

  private

  def require_login
    redirect_to login_path unless session.include? :name
  end

end
