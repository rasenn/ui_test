# -*- coding: utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Menu.new(:page_id => 1, :menu => "めにゅー").save!
Form.new(:page_id => 1, :form_no => 1, :name => "form1", :form_type => "text").save!
Form.new(:page_id => 1, :form_no => 2, :name => "form2", :form_type => "text").save!
Info.new(:page_id => 1, :form_no => 1, :info_no => 1, :name => "info1", :info_type => "string", :value => "test Infomation one").save!
Info.new(:page_id => 1, :form_no => 1, :info_no => 2, :name => "info2", :info_type => "string", :value => "test Infomation two").save!
Info.new(:page_id => 1, :form_no => 2, :info_no => 1, :name => "info3", :info_type => "string", :value => "test Infomation three").save!
