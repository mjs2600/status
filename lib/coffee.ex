defmodule Coffee do
  def compile do
    System.cmd("coffee -wj priv/static/js/application.js -c priv/static/coffee/*.coffee")
  end
end