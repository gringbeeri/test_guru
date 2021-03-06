module ApplicationHelper
  def current_time
    Time.zone.now.year
  end

  def github_url(author, repository)
    "Author Project: #{author}. #{link_to("Link Github.", repository, target: :_blank)}".html_safe
  end
end
