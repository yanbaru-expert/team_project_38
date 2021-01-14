module ApplicationHelper 
  def max_width
    # 後に条件分岐が必要
    if devise_controller?
      "mw-sm"
    elsif controller.action_name == "index"
      "mw-xl"
    end

  end
end