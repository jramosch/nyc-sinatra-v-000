class FiguresController < ApplicationController

  get '/figures' do
    @figures = Figure.all
    erb :'figures/index'
  end

  get '/figures/new' do
    @titles = Title.all
    @landmarks = Landmark.all
    erb :'figures/new'
  end

  get '/figures/:id' do
    erb :'figures/show'
  end

  post '/figures' do
    @figure = Figure.create(params[:figure])
    title = Title.find_or_create_by(params["title"]["name"])
    if !params["title"]["name"].empty?
      @figure.titles << Title.create(params["title"]["name"])
    end
    if !params["landmark"]["name"].empty?
      @figure.landmarks << Landmark.create(params[:landmark])
    end
    binding.pry
    redirect to "/figures/#{@figure.id}"
  end



end
