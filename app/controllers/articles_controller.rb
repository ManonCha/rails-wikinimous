class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  def index         # GET /articles
    @articles = Article.all
  end

  def show          # GET /articles/:id
  end

  def new           # GET /articles/new
    @article = Article.new
  end

  def create        # POST /articles
    @article = Article.new(article_params)
    @article.save
    redirect_to articles_path
  end

  def edit          # GET /articles/:id/edit
  end

  def update        # PATCH /articles/:id
    @article = Article.find(params[:id])
    @article.update(article_params)
    redirect_to articles_path
  end

  def destroy       # DELETE /tarticles/:id
    @article.destroy
    redirect_to articles_path
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:article).permit(:title, :content)
  end
end
