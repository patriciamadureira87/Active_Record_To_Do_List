get "/" do
  @completed = Task.where(:completed => true)
  @incomplete = Task.where(:completed => false)
  erb :index
end

post "/tasks" do
	task = Task.new({title: params[:title]})
	task.save
	redirect "/"
end

get "/tasks/check/:id" do 
	task = Task.find(params[:id])
	task.update(:completed => true)
	redirect "/"
end

post "/tasks/remove/:id" do
	Task.destroy(params[:id])
	redirect "/"
end




