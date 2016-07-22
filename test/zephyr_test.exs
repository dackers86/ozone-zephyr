defmodule ZephyrTest do
  use ExUnit.Case
  doctest Zephyr

  use Plug.Test

  test "it is listening on the car query endpoint" do
    response = conn(:get, "/edmunds-api")
    assert response.status == 200
  end
end
