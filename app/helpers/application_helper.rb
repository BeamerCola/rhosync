module ApplicationHelper

  # Determines if a flash message is present and dipslays it
  #
  def display_flash(options={})
    if flash.keys.any?
      content_tag(:div, content_tag(:div, flash[flash.keys.first], :class => "flash #{flash.keys.first}"), :id => "flash", :style => "display: none;")
    end
  end

end