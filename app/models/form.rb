# -*- coding: utf-8 -*-

class Form < ActiveRecord::Base
  attr_accessible :form_no, :name, :page_id, :type


  def self.fetch_forms(params)
    if params[:page_id]
      Form.where(:page_id => params[:page_id]).order("form_no")
    else
      return []
    end
  end


end
