defmodule ApplicationRouter do
  use Dynamo.Router

  prepare do
    # Pick which parts of the request you want to fetch
    # You can comment the line below if you don't need
    # any of them or move them to a forwarded router
    conn = conn.fetch([:cookies, :params])
    conn.assign(:layout, "layout")
  end

  # It is common to break your Dynamo into many
  # routers, forwarding the requests between them:
  # forward "/posts", to: PostsRouter

  get "/" do
    #conn = conn.assign(:title, "Welcome to Dynamo!")
    render conn, "index.html"
  end

  post "/post/new" do
    #conn = conn.assign(:title, "Welcome to Dynamo!")
    IO.puts conn.params[:status]
    render conn, "index.html"
  end
end
