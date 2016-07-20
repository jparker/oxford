# Oxford

Functions for splitting and joining string lists.

  1. `Oxford.split/1` splits a String into a list using commas and/or the word
  "and" as delimiters. For comma-delimited lists, the [Oxford
  comma](https://en.wikipedia.org/wiki/Serial_comma) is required.
  [Because](http://imgur.com/gallery/fycHx).

    ```elixir
    Oxford.split("one")                 # => ["one", "two", "three"]
    Oxford.split("one and two")         # => ["one", "two", "three"]
    Oxford.split("one, two, and three") # => ["one", "two", "three"]
    Oxford.split("one, two and three")  # => ["one", "two and three"]
    ```

  2. `Oxford.join/1` joins a list of Strings into a single String. If there are
  only two elements, the words are joined by the word "and". If there are three
  or more elements, they are delimited by commas. The penultimate and ultimate
  elements are delimited by the word "and" and an [Oxford
  comma](https://en.wikipedia.org/wiki/Serial_comma).

    ```elixir
    Oxford.join(~W[one])                # => "one"
    Oxford.join(~W[one two])            # => "one and two"
    Oxford.join(~W[one two three])      # => "one, two, and three"
    ```

This library genuinely is as useless as it appears. This is just a personal
exercise as I learn my way around Elixir.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add `oxford` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:oxford, "~> 0.1.0"}]
    end
    ```

  2. Ensure `oxford` is started before your application:

    ```elixir
    def application do
      [applications: [:oxford]]
    end
    ```

