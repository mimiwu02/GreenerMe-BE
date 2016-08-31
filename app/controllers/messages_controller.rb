class MessagesController < ApplicationController
  def index
    messages = Message.all
    render json: messages
  end

  def show
    message = Message.where(zip: params[:name])
    render json: message
  end

  def create
    new_message = Message.new(name: params[:name], email: params[:email], zip: params[:zip], title: params[:title], content: params[:content])

    if new_message.save
      render json: new_message
    else
      render json: {'error': new_message.errors}
    end
  end

  def update
    puts "params:", params
    found_message = Message.where(id: params[:id])
    updated = found_message.update(name: params[:name], email: params[:email], zip: params[:zip], title: params[:title], content: params[:content])

    if updated
      render json: updated
    else
      render json: {'error': updated.errors}
    end
  end

  def destroy
    Message.delete_all(id: params[:id])
    render json: {'Messages controller': 'Post removed'}
  end

end
