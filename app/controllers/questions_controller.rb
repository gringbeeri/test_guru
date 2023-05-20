class QuestionsController < AuthenticatedController

  before_action :authenticate_user!

end
