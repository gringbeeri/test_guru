class AnswersController < AuthenticatedController

  before_action :authenticate_user!
end
