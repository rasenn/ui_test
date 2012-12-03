# -*- coding: utf-8 -*-

class UiModel

  def get_html(params)
    p params
    if params
      if "last_name" == params[:par]
        return "名"
      elsif "family_name" == params[:par]
        return "姓"
      end
    end
  end
end

