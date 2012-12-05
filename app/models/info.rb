# -*- coding: utf-8 -*-
class Info < ActiveRecord::Base
  attr_accessible :form_no, :info_no, :name, :page_id, :info_type, :value

  def self.fetch_infos(params)
    if params[:form_no] && params[:page_id]
      return Info.where(:form_no => params[:form_no], :page_id => params[:page_id]).order("info_no").all
    else
      # TODO: どうしましょ
      return []
    end
  end

  def display
    # 文字列表示
    if self.info_type == "string"
      return "<div>"+self.value+"</div>"

    # PDF表示
    elsif self.info_type == "pdf"
      return "<a href='"+value+"'>"+name+"</a>"

    # 外部リンク表示
    elsif self.info_type == "link"
      return "<a href='"+value+"'>"+name+"</a>"
      
    elsif self.info_type == "DB"
    elsif self.info_type == "excel"
    elsif self.info_type == "word"
    elsif self.info_type == ""

    end
    return ""
  end
  
  
end
