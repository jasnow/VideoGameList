# typed: false
class StaticPagesController < ApplicationController
  def about
    skip_authorization
  end
end
