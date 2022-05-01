module ApplicationHelper
  def current_time
    Time.current.year
  end

  def github_url(author, repository)
    " Author Project: #{author}." +  link_to('Link Github.', repository)
  end
end
