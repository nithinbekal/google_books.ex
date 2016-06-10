defmodule GoogleBooks do
  @moduledoc """
  Provides a wrapper for the Google Books API.

  Currently only supports finding a book by ISBN.
  """

  @api_url "https://www.googleapis.com/books/v1/volumes"

  @doc """
  Searches for a book by the given ISBN.
  Returns a map containing the book information if found.

  Returns the atom `:not_found` if there is no result.

      iex> GoogleBooks.find_by_isbn("978-1338099133")
  """
  def find_by_isbn(isbn) do
    isbn
    |> remove_dashes
    |> build_url
    |> get_json
    |> decode_response
    |> extract_volume_info
  end

  defp remove_dashes(isbn), do: String.replace(isbn, "-", "")
  defp build_url(isbn), do: "#{@api_url}?q=isbn:#{isbn}"
  defp get_json(url), do: HTTPoison.get!(url).body
  defp decode_response(json), do: Poison.decode!(json)

  defp extract_volume_info(%{"totalItems" => 0}), do: :not_found

  defp extract_volume_info(response) do
    hd(response["items"])["volumeInfo"]
  end
end
