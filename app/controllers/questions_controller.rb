class QuestionsController < ApplicationController

  before_action :find_test, only: %i[new create]
  before_action :find_question, only: %i[show edit update destroy]

  rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_question_not_found

  def show; end

  def new
    @question = @test.questions.new
  end

  def edit; end

  def create
    @question = @test.questions.new(questions_params)

    if @question.save
      render :show
    else
      render :new
    end
  end

  def update
    if @question.update(questions_params)
      render :show
    else
      render :edit
    end
  end

  def destroy
    @question.destroy
    render plain: "DELETE QUESTION"
  end

  private

  def find_test
    @test = Test.find(params[:test_id])
  end

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
