defmodule Mc.Menu do
  @moduledoc """
  Mythcraft game menu data structure
  """
  defstruct items: [], title: "", description: "Select a menu item by typing its associated number."

  def reduce_items(menu, state, lambda) do
    Enum.reduce(menu.items, state, fn(item, state) ->
      lambda.(state, Mc.MenuItem.get_text(item), Mc.MenuItem.get_on_select(item))
    end)
  end

  def get_title(menu), do:
    menu.title

  def get_description(menu), do:
    menu.description
end
