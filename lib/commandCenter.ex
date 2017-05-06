defmodule Mc.CommandCenter do
  @moduledoc """
  Mythcraft game module for receiving and dispatching commands between the user interface and the server.
  """

  use ModuleConfig

  def navigate_to_menu(renderer_id, menu_type, master_data) do
    Mc.MenuFactory.show_menu(renderer_id, menu_type, master_data)
  end

  def play_scenario(renderer_id, scenario) do
    Mc.ScenarioPlayer.play_scenario(renderer_id, scenario)
  end

  def give_command(client_id, command) do
    ServerConnector.send_message(client_id, command)
  end
end
