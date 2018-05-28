class PagesController < ApplicationController
  skip_before_action :authenticate_user!, :only => :blog
  skip_before_action :authenticate_user!, :only => :article_1
  def home

  end
end
