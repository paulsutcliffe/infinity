Cuando /^en "(.*?)" elijo "(.*?)"$/ do |label, option|
  choose(option)
end

Cuando /^en "(.*?)" selecciono "(.*?)"$/ do |locator, value|
  select(value, {:from => locator})
end
