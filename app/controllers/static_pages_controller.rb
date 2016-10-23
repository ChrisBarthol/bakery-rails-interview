class StaticPagesController < ApplicationController
  layout "main", only: [:home]
  def home
  end

  def help
  end

  def about
  end

  def contact
  end
end
