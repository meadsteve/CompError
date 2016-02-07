defmodule CompError.One do
  defstruct whatever: ""
end

defmodule CompError.Two do
  defstruct whatever: ""
end


defimpl String.Chars, for: CompError.One do
  def to_string(_thing) do
    "CompError.One"
  end
end
