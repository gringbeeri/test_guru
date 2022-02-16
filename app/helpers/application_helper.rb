module ApplicationHelper
  def current_time
    time = Time.new
    time.year
  end

  def github_url(author, repository)
    render html: "Author Project:#{author}. <a href=#{repository}>Link Github.</a>".html_safe
  end
end
