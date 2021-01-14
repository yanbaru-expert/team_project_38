module ApplicationHelper 
  def max_width
    # 後に条件分岐が必要
    if devise_controller?
      "mw-sm"
    end

  end
end
