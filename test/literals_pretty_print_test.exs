defmodule Erlex.Test.LiteralsPretyPrintTest do
  use ExUnit.Case

  test "nil is parsed appropriately" do
    input = "nil"
    pretty_printed = Erlex.pretty_print(input)

    expected_output = "nil"
    assert pretty_printed == expected_output
  end

  test "true is parsed appropriately" do
    input = "true"
    pretty_printed = Erlex.pretty_print(input)

    expected_output = "true"
    assert pretty_printed == expected_output
  end

  test "false is parsed appropriately" do
    input = "false"
    pretty_printed = Erlex.pretty_print(input)

    expected_output = "false"
    assert pretty_printed == expected_output
  end

  test "empty square lists are pretty printed appropriately" do
    input = ~S"""
    []
    """

    pretty_printed = Erlex.pretty_print(input)

    expected_output = "[]"
    assert pretty_printed == expected_output
  end

  test "empty maps are pretty printed appropriately" do
    input = ~S"""
    #{}
    """

    pretty_printed = Erlex.pretty_print(input)

    expected_output = "%{}"
    assert pretty_printed == expected_output
  end

  test "empty tuples are pretty printed appropriately" do
    input = ~S"""
    {}
    """

    pretty_printed = Erlex.pretty_print(input)

    expected_output = "{}"
    assert pretty_printed == expected_output
  end

  test "maps are pretty printed appropriately" do
    input = ~S"#{'halted':='true'}"

    pretty_printed = Erlex.pretty_print(input)

    expected_output = "%{:halted => true}"
    assert pretty_printed == expected_output
  end

  test "structs are pretty printed appropriately" do
    input = ~S"#{'halted':='true', '__struct__':='Elixir.Plug.Conn'}"

    pretty_printed = Erlex.pretty_print(input)

    expected_output = "%Plug.Conn{:halted => true}"
    assert pretty_printed == expected_output
  end

  test "ranges are pretty printed appropriately" do
    input = "1..5"
    pretty_printed = Erlex.pretty_print(input)

    expected_output = "1..5"
    assert pretty_printed == expected_output
  end

  test "zero arg functions in contract are pretty printed appropriately" do
    input = "() -> atom()"
    pretty_printed = Erlex.pretty_print(input)

    expected_output = "() :: atom()"
    assert pretty_printed == expected_output
  end

  test "empty binary is pretty printed appropriately" do
    input = "<<>>"
    pretty_printed = Erlex.pretty_print(input)

    expected_output = "<<>>"
    assert pretty_printed == expected_output
  end

  test "sized binary is pretty printed appropriately" do
    input = "<<_:64>>"
    pretty_printed = Erlex.pretty_print(input)

    expected_output = "<<_ :: 64>>"
    assert pretty_printed == expected_output
  end

  test "unit binary is pretty printed appropriately" do
    input = "<<_:_*12>>"
    pretty_printed = Erlex.pretty_print(input)

    expected_output = "<<_ :: size(12)>>"
    assert pretty_printed == expected_output
  end

  test "sized list binary is pretty printed appropriately" do
    input = "<<_:64,_:_*8>>"
    pretty_printed = Erlex.pretty_print(input)

    expected_output = "<<_ :: 64, _ :: size(8)>>"
    assert pretty_printed == expected_output
  end
end
