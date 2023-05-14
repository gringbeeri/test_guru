class TestsController < ApplicationController

  before_action :authenticate_user!
  before_action :set_test, only: %i[start]

  # skip_before_action :verify_authenticity_token, only: %i[destroy]

  def index
    @tests = Test.all
  end

  def start
    current_user.tests.push(@test)
    redirect_to current_user.test_passage(@test)
  end

  private

  def set_test
    @test = Test.find(params[:id])
  end
end
