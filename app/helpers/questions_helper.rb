module QuestionsHelper

  def question_header(test)
    if request.original_fullpath == new_test_question_path
      "CREATE NEW #{test.title} QUESTION"
    else
      "EDIT #{test.title} QUESTION"
    end
  end
end
