# frozen_string_literal: true
class RegistrationsController < ApplicationController
  def new
    # It will look at the User model (in app/models/user)
    # @user will be visible in Registrations view (app/views/registrations/new)
    @user = User.new
  end

  def create
    render plain: 'Thanks!'
  end
end
