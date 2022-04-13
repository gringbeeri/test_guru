module ApplicationHelper
  def current_time
    Time.current.year
  end

  def github_url(author, repository)
    link_to('Link Github.', repository) + " Author Project: #{author}."
  end
end
