defmodule CommandCenterTest do
  use ExUnit.Case
  doctest Mc.CommandCenter

  setup do
    client_id = Process.spawn(fn() -> 0 end, [])
    renderer_id = Process.spawn(fn() -> 0 end, [])
    [client_id: client_id, renderer_id: renderer_id]
  end

  test "navigate_to_menu", context do
    assert :ok = Mc.CommandCenter.navigate_to_menu(context[:renderer_id], Mc.MainMenu, nil)
  end

  test "play_scenario", context do
    assert :ok = Mc.CommandCenter.play_scenario(context[:renderer_id], %{})
  end

  test "give_command", context do
    assert {:ok, %{}} = Mc.CommandCenter.give_command(context[:client_id], %{})
  end
end
