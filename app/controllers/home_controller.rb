# coding: utf-8
class HomeController < ApplicationController
  #caches_action :index, :expires_in => 10.minutes, :layout => false

  def index
    fresh_when(:etag => [SiteConfig.wiki_index_html])
    SiteConfig.wiki_index_html = SiteConfig.find_by_key("index_html")
    drop_breadcrumb("首页", root_path)
  end

  def api
    drop_breadcrumb("API", root_path)
  end
end
