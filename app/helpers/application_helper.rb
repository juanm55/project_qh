module ApplicationHelper

  # Return a title on a per-page basis.
def title
  base_title = "queHago.co"
  motto = "Que hacer en tu ciudad!"
    if @title.nil?
      "#{base_title} | #{motto}"
    else
      "#{base_title} | #{@title}"
    end
end


end
