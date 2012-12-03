# -*- coding: utf-8 -*-
class Menu < ActiveRecord::Base
  attr_accessible :menu, :page_id

  def self.fetch_menu(params)
    if params[:page_id]
      Menu.where(:page_id => params[:page_id]).first
    else
      # TODO: どうしましょ
      return nil
    end
  end

  def display
    return menu
  end
  
end
