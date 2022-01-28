class QuestionsController < ApplicationController

  before_action :find_question, only: %i[show]

  rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_question_not_found

  def index
    render json: { questions: Question.where(test_id: params[:test_id]) }
  end

  def show

  end

  def new

  end

  def create
    question = Question.create!(questions_params)
    render plain: "Question IS CREATED! Вопрос: #{question.body} принадлежит тесту: #{question.test.title}!"
  end

  def destroy
    question = Question.find(params[:id], params[:test_id]).destroy
    render plain: "DELETE QUESTION"
  end

  private

  def find_question
    @question = Question.find(params[:id])
  end

  def questions_params
    params.require(:question).permit(:body, :test_id)
  end

  def rescue_with_question_not_found
    render plain: 'Question was not found'
  end
end
