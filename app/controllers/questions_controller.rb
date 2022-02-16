class QuestionsController < ApplicationController

  before_action :find_test
  before_action :find_question, only: %i[show]

  rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_question_not_found

  def index
    @questions = @test.questions
  end

  def show

  end

  def new
    @question = @test.questions.build
  end

  def create
    @question = Question.new(questions_params)

    if @question.save
      redirect_to @question
    else
      render :new
    end
  end

  def destroy
    question = Question.find(params[:id], params[:test_id]).destroy
    render plain: "DELETE QUESTION"
  end

  private

  def find_test
    @test = Test.find(params[:test_id])
  end

  def find_question
    @question = @test.questions.find(params[:id])
  end

  def questions_params
    params.require(:question).permit(:body, :test_id)
  end

  def rescue_with_question_not_found
    render plain: 'Question was not found'
  end
end
