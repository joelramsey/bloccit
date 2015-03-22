module ApplicationHelper
  def my_name
    "Joel David Ramsey"
  end
  
  def form_group_tag(error, &block)
    if errors.any?
      content_tag :div, capture(&block), class: 'form-group has-error'
    else
      content_tag :div, capture(&block), class: 'form-group'
    end
  end
end
