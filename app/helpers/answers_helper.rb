module AnswersHelper

  def answer_header(question)
    if action_name == 'new'
      "CREATE NEW #{question.body} ANSWER"
    else
      "EDIT #{question.body} ANSWER"
    end
  end
end
