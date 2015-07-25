module MenuHelper

  def menu_path(name)
    case name
    when 'cats'
      cats_path
    when 'toys'
      goods_path
    when 'yard'
      root_path
    else
      '#'
    end
  end

end
