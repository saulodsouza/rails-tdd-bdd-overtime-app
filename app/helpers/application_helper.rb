module ApplicationHelper
  def active?(path)
    current_page?(path)
  end
end
