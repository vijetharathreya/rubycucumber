@youtube
Feature: YouTubeTest

@launch
Scenario: LaunchAndRun

Given I Launch the Google Chrome Browser
When  I enter the You Tube URL
And Enter a Search Text
Then The respective video should be launched

