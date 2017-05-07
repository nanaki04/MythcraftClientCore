defmodule Mc.MapSelectionMenu do
  def get(_master_data) do
    %Mc.Menu{
      title: "Map Selection",
      description: "Select the map you wish to play on",
      items: [
        %Mc.MenuItem{
          text: "Dummy Map",
          on_select: &__MODULE__.on_select/1
        }
      ]
    }
  end

  def on_select(_, [{:client_id, client_id}]) do
    # TODO implement
    Mc.CommandCenter.navigate_to_menu(client_id, Mc.MainMenu, nil)
  end

end
