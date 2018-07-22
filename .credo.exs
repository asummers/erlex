# config/.credo.exs
%{
  configs: [
    %{
      name: "default",
      files: %{
        included: ["lib/"],
        excluded: [
          "mix.exs",
          "_build/",
          ".git/"
        ]
      },
      color: true,
      checks: [
        {Credo.Check.Consistency.ExceptionNames, false},
        {Credo.Check.Design.TagTODO, false},
        {Credo.Check.Readability.MaxLineLength, false},
        {Credo.Check.Readability.PreferImplicitTry, false},
        {Credo.Check.Refactor.ABCSize},
        {Credo.Check.Refactor.PipeChainStart},
      ]
    }
  ]
}
