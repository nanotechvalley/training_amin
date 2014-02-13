class ArticlesController < ApplicationController
  
  layout 'articles'

  def index
    @articles = Article.where("rating > ?", 1)
                        .limit(6)
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

  def show
    @comments = @article.comments

  end
 
  def edit
      
  end
    
  def destroy
    @article = Article.find_by_id(params[:id])

      if @article.destroy
        flash[:notice] = "Selamat Sudah Didelete"
             
      else
        flash[:error] = "Gagal Delete Brooo"

      end

      redirect_to articles_path


  end
  
  private
  
  def article_params
      params.require(:article).permit(:title, :descriptions, :rating, :user_id)
    end
  
end