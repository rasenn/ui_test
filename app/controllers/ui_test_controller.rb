# -*- coding: utf-8 -*-
class UiTestController < ApplicationController
  def type1
    
  end

  def ui_change
    ui_model = UiModel.new
    puts "************"
    @output = ui_model.get_html(params)
    p params,@output
  end

  # ページ表示用
  def page
    @menu = Menu.fetch_menu(params)
    @forms = Form.fetch_forms(params)
    @page_id = params[:page_id] || 0
  end

  # 情報表示用(Ajax用)
  def info_pane
    @infos = Info.fetch_infos(params)
  end
  
  
  
end
