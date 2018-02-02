Given("I Launch the Google Chrome Browser") do
 puts "Google Chrome Browser Launched"
 end

When("I enter the You Tube URL") do
  @browser.navigate.to ("https://www.youtube.com/")
  end

When("Enter a Search Text") do
 wait = Selenium::WebDriver::Wait.new(:timeout => 15)
 input = wait.until {
    element = @browser.find_element(:id,"search")
    element if element.displayed?
 }
 input.send_keys("Trolls Trailer")
 
 searchbutton = @browser.find_element(:id,"search-icon-legacy")
 searchbutton.click() if searchbutton.displayed?  
end

Then("The respective video should be launched") do
#... wait until timeout then look for the result-count element on the page
 wait = Selenium::WebDriver::Wait.new(:timeout => 15)
 input = wait.until{
 resultscount = @browser.find_element(:id,"result-count")
 resultscount if resultscount.displayed?
 }
 puts "Search Results were as follows " + input.text
 
 dirname = "C:\\Users\\varap\\RubyResultsFolder"
 basename= "results_#{Time.new.getutc.strftime('%Y-%m-%d')}.txt" 
 FileUtils.mkpath dirname unless File.exists?(dirname)
filename = File.join(dirname, basename)
 out_file = File.new(filename, "w")
#... write results into file
out_file.puts(input.text)
#... close the file
out_file.close
end