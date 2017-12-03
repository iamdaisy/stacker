class MainController < ApplicationController
  # load_and_authorize_resource

  def index
    # require 'git-trend'
    # @lists = []
    # repos = GitTrend.get(:all, :daily)
    #
    # repos.first(10).each do |r|
    #   @lists <<  "#{r.name}=#{r.lang}=#{r.star_count}"
    # end
    require 'nokogiri'
    require 'json'
    require 'awesome_print'


    arr = Array.new
    File.open("gitdata.json", "r").each_line do |row|
      arr << JSON.parse(row)
    end
    @name = []
    @star = []
    arr[0..10].each do |a|
      @name << a["name"]
      @star << a["count"]
    end
  end


end
