# -*- coding: utf-8 -*-
require 'spec_helper'

describe Form do
  pending "add some examples to (or delete) #{__FILE__}"


  context "何も登録されてない" do
    before(:each) do
      Form.all.each {|e| e.destroy }
    end
    
    it "何も検索されない" do
      params = {:page_id => 1} 
      Form.fetch_forms(params).size.should == 0 
    end
      
    after(:each) do
      Form.all.each {|e| e.destroy }
    end
  end

  context "1件登録されている" do
    before(:each) do
      Form.new(:form_no => 1 , :name => "フォーム１", :page_id => 1).save
    end

    after(:each) do
      Form.all.each {|e| e.destroy }
    end
    
    it "検索される" do
      params = {:page_id => 1}
      forms = Form.fetch_forms(params)
      forms.size.should== 1
    end

    it "引数がなければ検索されない" do
      params = {}
      forms = Form.fetch_forms(params)
      forms.size.should == 0
    end
  end


  context "2件登録されている" do
    before(:each) do
      Form.new(:form_no => 1 , :name => "フォーム１", :page_id => 1).save
      Form.new(:form_no => 2 , :name => "フォーム１", :page_id => 1).save
    end

    after(:each) do
      Form.all.each {|e| e.destroy }
    end
    
    it "2件検索される" do
      params = {:page_id => 1}
      forms = Form.fetch_forms(params)
      forms.size.should == 2
    end

    it "２件のソート順はフォームNo順になっている" do
      params = {:page_id => 1}
      form_nos = Form.fetch_forms(params).map{|f| f.form_no}
      form_nos.should == [1,2]
    end
  end
  
end
