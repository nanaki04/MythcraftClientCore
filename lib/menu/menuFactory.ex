defmodule Mc.MenuFactory do
  @moduledoc """
  Mythcraft game module for fetching menu templates and passing them to the renderer
  """

  use ModuleConfig

  def show_menu(client_id, menu_type, master_data) do
    menu = menu_type.get(master_data)
    RendererBridge.show_menu(client_id, menu)
  end
end
