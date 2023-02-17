module ApplicationHelper
  def error_messages_for(object)
    render(partial: 'layouts/error_messages', locals: { map_error: object })
  end
end
