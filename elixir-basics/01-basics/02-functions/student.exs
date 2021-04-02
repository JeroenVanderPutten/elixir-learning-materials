defmodule Temperature do
  def kelvin_to_celsius(t) do
    t - 273.15
  end


  def celcius_to_kelvin(t) do
    t + 273.15
  end
end
