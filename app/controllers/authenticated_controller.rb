class AuthenticatedController < ApplicationController
  before_action :authenticate_author!
end
