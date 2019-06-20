class NotesController < ApplicationController
  before_action :authenticate_user!

  def create
    @post = Post.find(params[:post_id])
    @note = @post.notes.create(note_params)
    @note.author = current_user.email
    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find(params[:post_id])
    @note = Note.find(params[:id])
    @note.destroy
    redirect_to post_path(@post)
  end

  private def note_params
    params.require(:note).permit(:content, :post_id, :author)
  end
end
