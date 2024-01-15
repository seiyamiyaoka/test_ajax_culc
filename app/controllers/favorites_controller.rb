class FavoritesController < ApplicationController


  def create
    @blog = Blog.find(params[:blog_id])
    favorite = current_user.favorites.create(blog_id: @blog.id).save
  end

  def destroy
    @blog = Blog.find(params[:blog_id])
    current_user.favorites.find_by(id: params[:id]).destroy
    # favorite = current_user.favorites.destroy(blog_id: @blog.id).destroy
  end
end

