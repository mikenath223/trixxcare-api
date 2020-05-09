# frozen_string_literal: true

class ApplicationController < ActionController::API
  include Knock::Authenticable
  include Response
  include ExceptionHandler

  private

  def logged_in?
    !!current_user
  end
end
