class PostsController < ApplicationController
  http_basic_authenticate_with name: "desafiovamoscontodo", password: "XAHTJEAS23123%23", only: :dashboard
  
  def index
    @posts = Post.all.order(created_at: :desc)
    #para mostrar de manera de descendente según fecha de creación
    #se itera en Views/index.html.erb
  end

  def dashboard
  end

  def create
    @post = Post.create(title: params[:title], image_url: params[:image_url], content: params[:content])
    #se instancia y se crean los params para verlo en la url y en la base de datos
  end
end
