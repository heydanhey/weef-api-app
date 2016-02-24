class Api::V1::PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def create
    @post = Post.create(name: params[:name], text: params[:text], emotion_id: params[:emotion_id])

    render :show
  end

  def show
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    @post.update(name: params[:name], text: params[:text], emotion_id: params[:emotion_id])

    render :show    
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    render json: { message: "Employee Destroyed" }
  end

end
