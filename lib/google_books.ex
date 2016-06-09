defmodule GoogleBooks do
  @api_url "https://www.googleapis.com/books/v1/volumes"

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
