class CategoriesController < ApplicationController

  def create
    logger.info "CREATE"
    @category = Category.new(params[:category])
    if not @category.category.nil?
      @category.save
    end
    redirect_to action: 'index'
  end

  def index
    @categories = Category.all
  end

  def destroy
    logger.info "DESTROY"
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to action: 'index'
  end

end
