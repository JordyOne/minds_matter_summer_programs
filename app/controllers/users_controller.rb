class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    puts "*"*80
    puts "this works"
  end
end