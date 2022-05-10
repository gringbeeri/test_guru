module QuestionsHelper

  def question_header(test)
    if action_name == 'new'
      "CREATE NEW #{test.title} QUESTION"
    else
      "EDIT #{test.title} QUESTION"
    end
  end
end
