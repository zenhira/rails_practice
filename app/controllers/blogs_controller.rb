class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
    redirect_to new_blog_path, notice: "ブログを作成しました！"
    # 一覧画面へ遷移して、”ブログを作成しました！”と表示させる
    else
      render :new
      #入力フォームを再描画する
    end
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def edit
    @blog = Blog.find(params[:id])

  private

  def blog_params
    params.require(:blog).permit(:title, :content)
  end
end
