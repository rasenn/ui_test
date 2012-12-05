# -*- coding: utf-8 -*-
class Form < ActiveRecord::Base
  attr_accessible :form_no, :name, :page_id, :form_type

  def self.fetch_forms(params)
    if params[:page_id]
      return Form.where(:page_id => params[:page_id]).order("form_no").all
    else
      return []
    end
  end


end
