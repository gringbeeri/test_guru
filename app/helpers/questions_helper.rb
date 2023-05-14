module QuestionsHelper

  def question_header(test)
    if action_name == 'new'
      "Create new #{test.title} question"
    else
      "Edit #{test.title} question"
    end
  end
end
