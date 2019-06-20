class ChaptersController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @chapter = @post.chapters.create(chapter_params)
    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find(params[:post_id])
    @chapter = Chapter.find(params[:id])
    @chapter.destroy
    redirect_to post_path(@post)
  end

  private def chapter_params
    params.require(:chapter).permit(:header, :body, :image)
  end
end
