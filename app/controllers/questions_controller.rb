class QuestionsController < ApplicationController

  before_action :find_test

  rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_test_not_found

  def index
    render json: { questions: Question.where(test_id: params[:test_id]) }
  end

  def show
    render json: { question: Question.where(test_id: params[:test_id], id: params[:id]) }
  end

  def search
    render inline: '<%= @test.title %>'
  end

  def new

  end

  def create
    question = Question.create!(questions_params)

    result = ["Question IS CREATED!", "Вопрос: #{question.body} принадлежит тесту: #{question.test_id}!"]

    render plain: result.join("\n")
  end

  def destroy
    question = Question.(params[:id], params[:test_id]).destroy!

    render plain: question.inspect
  end

  private

  def find_test
    @test = Test.find(params[:id])
  end

  def questions_params
    params.require(:question).permit(:body, :test_id)
  end

  def rescue_with_test_not_found
    render plain: 'Test was not found'
  end
end
