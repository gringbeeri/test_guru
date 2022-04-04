module TestPassagesHelper

  def set_number_question(test_passage)
    questions = test_passage.test.questions.ids
    questions.index(test_passage.current_question.id) + 1
  end

  def percent_passage(test_passage)
    @result = 100 * (test_passage.correct_questions.to_f / test_passage.test.questions.count)
  end

  def more
    "#{@result} - You passed test!"
  end

  def less
    "#{@result} - You didn't pass the test!"
  end


  def count_questions(test_passage)
    test_passage.test.questions.count
  end
end
