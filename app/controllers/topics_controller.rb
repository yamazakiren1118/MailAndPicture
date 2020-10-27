class TopicsController < ApplicationController
  def new
    @topic = Topic.new
  end
  def create
    binding.pry
    @topic = Topic.new(image_name: params[:topic][:image_name])
    if @topic.save
      puts 'OK create'
    else
      puts 'NO create'
    end
  end
  def index
    @topic = Topic.all
  end
end
