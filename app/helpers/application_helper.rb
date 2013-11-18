module ApplicationHelper

  def title
    base_title = "Crafted (C) by ZoatWorks Software LLC"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end

end
