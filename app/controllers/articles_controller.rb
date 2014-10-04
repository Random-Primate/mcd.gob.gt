class ArticlesController < ApplicationController

  #before_action :authenticate_user!

  before_action :login_required, except: [:index, :show]
  before_action :role_required,  except: [:index, :show]

  before_action :set_page,       only: [:edit, :update, :destroy]
  before_action :owner_required, only: [:edit, :update, :destroy]

  #def edit
    # ONLY OWNER CAN EDIT THIS PAGE
  #end

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    #render plain: params[:article].inspect
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end

  private

    def set_page
      @article = Article.find params[:id]

      # TheRole: You should define OWNER CHECK OBJECT
      # When editable object was found
      # You should define @owner_check_object before invoking **owner_required** method
      @owner_check_object = @article
    end

    def article_params
      params.require(:article).permit(:title, :text)
    end
end
