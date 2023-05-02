# DecodeJson

** Fetch json data from a url and decode it to a struct**

## How to run
```bash
git clone https://github.com/Kahono0/fetch-and-decode.git

cd fetch-and-decode

mix deps.get

iex -S mix
```
To fetch a single object, use the `fetch_one/1` function and pass in the url as a string
```elixir
iex> DecodeJson.fetch_one("https://jsonplaceholder.typicode.com/posts/1")
%{
  "body" => "est rerum tempore vitae\nsequi sint nihil reprehenderit dolor beatae ea dolores neque\nfugiat blanditiis voluptate porro vel nihil molestiae ut reiciendis\nqui aperiam non debitis possimus qui neque nisi nulla",
  "id" => 2,
  "title" => "qui est esse",
  "userId" => 1
}
```

To fetch multiple objects, use the `fetch_all/1` function and pass in the url as a string

```elixir
iex> DecodeJson.fetch_all("https://jsonplaceholder.typicode.com/posts/")
[
  %{
    "body" => "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto",
    "id" => 1,
    "title" => "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
    "userId" => 1
  },
  %{
    "body" => "est rerum tempore vitae\nsequi sint nihil reprehenderit dolor beatae ea dolores neque\nfugiat blanditiis voluptate porro vel nihil molestiae ut reiciendis\nqui aperiam non debitis possimus qui neque nisi nulla",
    "id" => 2,
    "title" => "qui est esse",
    "userId" => 1
  },
  %{
    "body" => "et iusto sed quo iure\nvoluptatem occaecati omnis eligendi aut ad\nvoluptatem doloribus vel accusantium quis pariatur\nmolestiae porro eius odio et labore et velit aut",
    "id" => 3,
    "title" => "ea molestias quasi exercitationem repellat qui ipsa sit aut",
    "userId" => 1
  },
  %{
    "body" => "ullam et saepe reiciendis voluptatem adipisci\nsit amet autem assumenda provident rerum culpa\nquis hic commodi nesciunt rem tenetur doloremque ipsam iure\nquis sunt voluptatem rerum illo velit",
    "id" => 4,
    "title" => "eum et est occaecati",
    "userId" => 1
  },
  ...
]
```
