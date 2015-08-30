# encoding: UTF-8

Feature: Add courses
  In order to display courses to visitor
  As a admin
  I want to add a course

  Scenario: add course successfully
  	Given I am logged in as "vincent" with "123"
  	When I add a course no. "1" title "敏捷概览图"
  	Then I will add course successfully

  			
