module ApplicationHelper

  def javascript(*files)
    content_for(:specific_javascript) { javascript_include_tag(*files) }
  end


end
