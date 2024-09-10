class ArticlesController < ApplicationController
  def index
    search_params = params[:search]
    
    if search_params.present?
      @articles = Article.search_for(search_params)
    else
      @articles = Article.all
    end
  end  

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
  
    if @article.save
      if @article.image.attached?
        processed_image = ImageProcessing::MiniMagick
                          .source(@article.image.download)
                          .resize_to_limit(400, 400)
                          .call
  
        Tempfile.create(["processed_image", ".jpg"], Rails.root.join("tmp")) do |tempfile|
          tempfile.binmode
          tempfile.write(processed_image.read)
          tempfile.rewind

          @article.image.attach(io: tempfile, filename: @article.image.filename.to_s)
        end
      end
  
      redirect_to @article, notice: 'Artigo criado com sucesso.'
    else
      render :new
    end
  end
  

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article, notice: 'Artigo atualizado com sucesso.'
    else
      render :edit, status: :unprocessable_entity
    end
  end
  
  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path, status: :see_other
  end

  private

  def article_params
    params.require(:article).permit(:title, :body, :status, :image)
  end
end
