class CommentsController < ApplicationController
  def new()
    @comment = Comment.new
    @comment.article_id = Article.find(params[:id])
  end

  def create
    @comment = Comment.new
    @comment.article_id = Article.find(params[:id])
    @comment.author_name = params[:comment][:author_name]
    @comment.body = params[:comment][:body]
    @comment.save
  end
end
