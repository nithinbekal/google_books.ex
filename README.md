# GoogleBooks

A simple Elixir wrapper for the Google Books API.

Usage:

```iex
iex> GoogleBooks.find_by_isbn("978-1338099133")
%{"allowAnonLogging" => false,
  "authors" => ["J. K. Rowling", "Jack Thorne", "John Tiffany"],
  "canonicalVolumeLink" => "http://books.google.co.in/books/about/Harry_Potter_and_the_Cursed_Child_Parts.html?hl=&id=Jx1ojwEACAAJ",
  "categories" => ["Juvenile Nonfiction"], "contentVersion" => "preview-1.0.0",
  "description" => "Seashells, sand castles, waves, and sun! A day at the beach has never been more fun.",
  "imageLinks" => %{"smallThumbnail" => "http://books.google.co.in/books/content?id=Jx1ojwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api",
    "thumbnail" => "http://books.google.co.in/books/content?id=Jx1ojwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api"},
  "industryIdentifiers" => [%{"identifier" => "1338099132",
     "type" => "ISBN_10"},
   %{"identifier" => "9781338099133", "type" => "ISBN_13"}],
  "infoLink" => "http://books.google.co.in/books?id=Jx1ojwEACAAJ&dq=isbn:9781338099133&hl=&source=gbs_api",
  "language" => "en", "maturityRating" => "NOT_MATURE", "pageCount" => 320,
  "previewLink" => "http://books.google.co.in/books?id=Jx1ojwEACAAJ&dq=isbn:9781338099133&hl=&cd=1&source=gbs_api",
  "printType" => "BOOK", "publishedDate" => "2016-07-31",
  "publisher" => "Arthur A. Levine Books",
  "readingModes" => %{"image" => false, "text" => false},
  "title" => "Harry Potter and the Cursed Child - Parts I & II (Special Rehearsal Edition): The Official Script Book of the Original West End Production"}
```

## Installation

  1. Add google_books to your list of dependencies in `mix.exs`:

        def deps do
          [{:google_books, "~> 0.0.1"}]
        end

  2. Ensure google_books is started before your application:

        def application do
          [applications: [:google_books]]
        end

## License

```
Copyright (c) 2016 Nithin Bekal

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
```

