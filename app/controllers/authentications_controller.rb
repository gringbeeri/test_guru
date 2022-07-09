class AuthenticationsController < ApplicationController

  before_action :authenticate_user!
end
