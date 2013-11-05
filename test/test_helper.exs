Dynamo.under_test(Status.Dynamo)
Dynamo.Loader.enable
ExUnit.start

defmodule Status.TestCase do
  use ExUnit.CaseTemplate

  # Enable code reloading on test cases
  setup do
    Dynamo.Loader.enable
    :ok
  end
end
