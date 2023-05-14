class Admin::TestsController < Admin::BaseController
  
  before_action :set_test, only: %i[show edit update destroy]

  skip_before_action :verify_authenticity_token, only: %i[destroy]

  def index
    @tests = Test.all
  end

  def show; end

  def new
    @test = Test.new
  end

  def edit; end

  def update
    if @test.update(test_params)
      render :show
    else
      render :edit
    end
  end

  def create
    @test = Test.new(test_params)

    if @test.save
      render :show
    else
      render :new
    end
  end

  def destroy
    @test.destroy
    redirect_to admin_tests_path
  end

  def start
    current_user.tests.push(@test)
    redirect_to current_user.test_passage(@test)
  end

  private

  def set_test
    @test = Test.find(params[:id])
  end

  def test_params
    params.require(:test).permit(:title, :level, :category_id, :author_id)
  end
end
