defimpl String.Chars, for: CompError.Two do
  def to_string(_thing) do
    "CompError.Two"
  end
end

defmodule CompErrorTest do
  use ExUnit.Case

  test "CompError.One can be turned in to a string" do
    thing = %CompError.One{}
    assert "#{thing}" == "CompError.One"
  end

  test "CompError.Two can be turned in to a string only in elixir 1.0 and 1.1" do
    thing = %CompError.Two{}
    assert "#{thing}" == "CompError.Two"
  end

end
