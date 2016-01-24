# Homepage (Root path)
get '/' do
  erb :index
end

get '/messages' do
  @messages = Message.all
  erb :'messages/index'
end

get '/messages/new' do
  erb :'messages/new'
end

post '/messages' do 
  @message = Message.new(
    content: params[:content],
    author: params[:author],
    url: params[:url]
    )
  if @message.save
    redirect '/messages'
  else
    erb :'messages/new'
  end
end

get '/messages/:id' do 
  message_by_id = Message.find(params[:id])
  @message = Message.where(author: message_by_id.author)
  erb :'messages/show'
end