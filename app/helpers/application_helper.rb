module ApplicationHelper
  def max_width
    # 後に条件分岐が必要
    var(--breakpoint-sm)
    "mw-xl"
  end
end
