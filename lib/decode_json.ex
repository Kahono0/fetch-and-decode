defmodule DecodeJson do
  @moduledoc """
  Documentation for `DecodeJson`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> DecodeJson.hello()
      :world

  """
  @article %{
    :user_id => 0,
    :title => "",
    :body => "",
    :id => 0
  }
  def fetch_all(url) do
    {:ok, response} = HTTPoison.get(url)
    body = response.body

    #decode json
    json = Poison.decode!(body, as: [@article])
    json
  end

  def fetch_one(url) do
    {:ok, response} = HTTPoison.get(url)
    body = response.body

    #decode json
    json = Poison.decode!(body, as: @article)
    json
  end

  def hello do
    :world
  end
end
