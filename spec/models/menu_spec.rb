# -*- coding: utf-8 -*-
require 'spec_helper'

describe Menu do
  pending "add some examples to (or delete) #{__FILE__}"

  context "データが登録されていない。" do
    before(:each) do
      Menu.all.each{|m| m.destroy }
    end
    
    it "登録できること" do
      Menu.new(:page_id => 1 , :menu => "本日は晴天なり").save.should be_true
    end

    after(:each) do
      Menu.all.each{|m| m.destroy }
    end

  end

  context "１件のデータが登録されている場合" do

    before(:each) do
      Menu.new(:page_id => 1 , :menu => "本日は晴天なり").save
    end

    it "登録したデータは検索される" do 
      params = {:page_id => 1}
      p Menu.fetch_menu(params)
      Menu.fetch_menu(params).should_not be_nil
    end

    it "登録してないデータは検索されない" do
      params = {:page_id => 2}
      Menu.fetch_menu(params).should be_nil
    end

    it "同じページ番号のデータが2重で登録できないこと" do
      Menu.new(:page_id => 1 , :menu => "本日は雨天なり").save.should raise_error
    end

    it "違うページ番号のデータは登録できること" do
      Menu.new(:page_id => 2 , :menu => "本日は雨天なり").save.should be_true
    end

    after(:each) do
      Menu.all.each{|m| m.destroy }
    end

  end

  
  
end
