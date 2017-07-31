defmodule Hotdish do
  @moduledoc """
  Documentation for Hotdish.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Hotdish.hello
      :world

  """
  def hello do
    :world
  end
# sets up worker threads for database query
def start(_type, _args) do
  import Supervisor.Spec, warn: false

     children = [
       worker(Hotdish.Repo, []),
     ]
   end

end
