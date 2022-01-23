class TestsController < ApplicationController

  def index
    render json: { tests: Test.all }
  end

  def new

  end

  def create

    test = Test.create!(test_params)

    render plain: test.inspect
  end

  def show

  end

  def destroy
    Test.find(params[:id]).destroy!
  end

  private

  def test_params
    params.require(:test).permit(:title, :level, :category_id, :author_id)
  end
end
