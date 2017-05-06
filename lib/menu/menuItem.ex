defmodule Mc.MenuItem do
  @moduledoc """
  Mythcraft game menu item data structure
  """
  defstruct text: "", on_select: &__MODULE__.on_select_default/1

  def on_select_default(_) do
    {:error, :no_select_callback_set}
  end

  def get_text(item), do:
    item.text

  def get_on_select(item), do:
    item.on_select
end
