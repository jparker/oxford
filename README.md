# Oxford

Functions for splitting and joining string lists.

    ```elixir
    Oxford.split "one"                 # => ["one", "two", "three"]
    Oxford.split "one and two"         # => ["one", "two", "three"]
    Oxford.split "one, two, and three" # => ["one", "two", "three"]
    ```

    ```elixir
    Oxford.join ~w[one]                # => "one"
    Oxford.join ~w[one two]            # => "one and two"
    Oxford.join ~w[one two three]      # => "one, two, and three"
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

