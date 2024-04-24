Feature: Search Feature

  @smoke
  Scenario: Search successfully
    Given visit url
    When search "kloia" on search page
    Then verify search result contains searched keyword on search result page