class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @current_date_time = Time.new.strftime('%d/%m/%Y %H:%M')
    logger.debug "Current time: #{@current_date_time}"
  end

  def create
    @user = User.new(params[:user])
    @user.save
    redirect_to action: 'index'
  end

end
