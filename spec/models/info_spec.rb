# -*- coding: utf-8 -*-
require 'spec_helper'

describe Info do
  pending "add some examples to (or delete) #{__FILE__}"

  context "何も登録されていない" do
    before(:each) do
      Info.all.each {|i| i.destroy }
    end

    after(:all) do
      Info.all.each {|i| i.destroy }
    end

    it "正しい検索内容でも検索されない" do
      params = {:form_no => 1, :page_id => 1 }
      Info.fetch_infos(params).size.should == 0
    end
    
  end

  context "1件登録されている" do
    before(:each) do
      Info.all.each {|i| i.destroy}
      Info.new( :page_id => 1, :form_no => 1 ).save
    end

    after(:all) do
      Info.all.each {|i| i.destroy}
    end
    
    it "正しいクエリで検索される" do
      params = {:page_id => 1, :form_no => 1 }
      Info.fetch_infos(params).size.should == 1
    end

    it "間違ったクエリでは検索されない" do
      params = {:page_id => 1, :form_no => 0 }
      Info.fetch_infos(params).size.should == 0
    end
    
  end

  context "2件登録されている" do

  end
  
end
