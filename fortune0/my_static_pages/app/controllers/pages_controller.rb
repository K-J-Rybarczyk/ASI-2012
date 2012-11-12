class PagesController < ApplicationController
  def welcome
	<% provide :title, 'About Us' %>
  end

  def about
	<% provide :title, 'About Us' %>
  end
end
