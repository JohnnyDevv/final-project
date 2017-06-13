module ApplicationHelper

  def active_class(controller_name, action_name)    
    "active" if current_page?(controller: controller_name, action: action_name)
  end

  def flash_class(level)
    case level
      when 'notice' then "alert alert-info alert-dismissible fade show"
      when 'success' then "alert alert-success alert-dismissible fade show" 
      when 'error' then "alert alert-danger alert-dismissible fade show"
      when 'alert' then "alert alert-warning alert-dismissible fade show"
    end
	end

  def hidden_div_if(condition, attributes = {}, &block)
    if condition
      attributes["style"] = "display: none"
    end
    content_tag("div", attributes, &block)
  end
end
