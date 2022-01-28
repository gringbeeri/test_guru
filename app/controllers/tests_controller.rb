class TestsController < ApplicationController

  before_action :find_test, only: %i[show]

  rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_question_not_found


  def index
    render json: { tests: Test.all }
  end

  def show

  end

  def new

  end

  def create
    test = Test.create!(test_params)
    render plain: "Test IS CREATED! Тест: #{test.title} принадлежит категории: #{test.category.title}!"
  end

  def destroy
    test = Test.find(params[:id]).destroy
    render plain: 'TEST IS DELETE!'
  end

  private

  def find_test
    @test = Test.find(params[:id])
  end

  def test_params
    params.require(:test).permit(:title, :level, :category_id, :author_id)
  end

  def rescue_with_question_not_found
    render plain: 'Test was not found'
  end
end
