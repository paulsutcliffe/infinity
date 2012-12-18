After('@javascript') do |scenario|
  if(scenario.failed?)
    page.driver.browser.save_screenshot("features/support/html-report/#{scenario.__id__}.png")
    embed("features/support/html-report/#{scenario.__id__}.png", "image/png", "SCREENSHOT")
  end
end
