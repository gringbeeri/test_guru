module ApplicationHelper
  def current_time
    Time.zone.now.year
  end

  def github_url(author, repository)
    "Author Project: #{author}. #{link_to("Link Github.", repository, target: :_blank)}".html_safe
  end

  def flash_message
    if flash[:alert]
      content_tag :p, flash[:alert], class: 'flash alert'
    elsif flash[:notice]
      content_tag :p, flash[:notice], class: 'flash notice'
    end
  end
end
