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

  def on_select(client_id) do
    Mc.CommandCenter.navigate_to_menu(client_id, Mc.MainMenu, nil)
  end

end
