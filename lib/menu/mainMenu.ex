defmodule Mc.MainMenu do
  @moduledoc """
  Settings for the main menu
  """

  use ModuleConfig

  def get(_master_data) do
    %Mc.Menu{
      title: "Main Menu",
      items: [
        %Mc.MenuItem{
          text: "New Game",
          on_select: &__MODULE__.on_select/1
        }
      ]
    }
  end

  def on_select(_, [{:client_id, client_id}]) do
    with {:ok, maps} <- Mc.CommandCenter.give_command(client_id, %Mc.Command{command: :get_maps}) do
      Mc.CommandCenter.navigate_to_menu(client_id, Mc.MapSelection, maps)
    else
      error_message -> RendererBridge.show_error(client_id, error_message)
    end
  end
end
