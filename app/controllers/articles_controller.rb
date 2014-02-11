class ArticlesController < ApplicationController
  
  layout 'articles'

  def index
    @articles = Article.all
  end
  
  def new
    @article = Article.new
    
  end
  
  def create
    @article = Article.create(article_params)
    
    if @article.save
      flash[:notice] = "Selamat Sudah Disimpan"
      redirect_to articles_path
      return

    else
      flash[:error] = "Gagal Maning Brooo"
    end

    render :new
    
    
  end 
    
  def edit
      
  end
    
  def destroy
  end
  
  private
  
  def article_params
      params.require(:article).permit(:title, :descriptions, :rating, :user_id)
    end
  
end