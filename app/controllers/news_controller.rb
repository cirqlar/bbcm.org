class NewsController < ApplicationController
  before_action :authenticate_admin!, only: [:new, :create, :edit, :update, :destroy]
  before_action :get_news, only: [:show, :edit, :update, :destroy]

  def index
    @news_p = News.all
  end

  def show
  end

  def new
    @news = News.new
  end

  def create
    @news = News.new(news_params)
    if @news.save!
      redirect_to @news
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @news.update_attributes(news_params)
      redirect_to @news
    else
      render 'edit'
    end
  end

  def destroy
    if @news.destroy
      redirect_to news_index_path
    else
      redirect_to @news
    end
  end

  private

    def get_news
      @news = News.find(params[:id])
    end

    def news_params
      params.require(:news).permit(:title, :message)
    end
end
