# -*- coding: utf-8 -*-
class Info < ActiveRecord::Base
  attr_accessible :form_no, :info_no, :name, :page_id, :type, :value

  def self.fetch_infos(params)
    if params[:form_no] && params[:page_id]
      Info.where(:form_no => params[:form_no], :page_id => params[:page_id]).order("info_no")
    else
      # TODO: どうしましょ
      return []
    end
  end

  def display
    # 文字列表示
    if self.type == "string"
      return "<div>"+self.value+"</div>"

    # PDF表示
    elsif self.type == "pdf"
      return "<a href='"+value+"'>"+name+"</a>"

    # 外部リンク表示
    elsif self.type == "link"
      return "<a href='"+value+"'>"+name+"</a>"
      
    elsif self.type == "DB"
    elsif self.type == "excel"
    elsif self.type == "word"
    elsif self.type == ""

    end
    return ""
  end
  
  
end
