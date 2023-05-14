module AnswersHelper

  def answer_header(question)
    if action_name == 'new'
      "Create new #{question.body} answer"
    else
      "Edit #{question.body} answer"
    end
  end
end
