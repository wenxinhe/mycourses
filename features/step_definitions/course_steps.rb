# encoding: UTF-8

Given(/^I am logged in as "([^"]*)" with "([^"]*)"$/) do |username, password|
	basic_auth username, password
	visit "http://#{username}:#{password}@localhost:3000/courses/new"
end

When(/^I add a course no\. "(.*?)" title "(.*?)"$/) do |no, title|
	@no = no
	@title = title
	expect(page).to have_content 'New Courses'
	fill_in 'course[no]', :with => no
	fill_in 'course[title]', :with => title
	click_on 'Create Course'
end

Then(/^I will add course successfully$/) do
	expect(page).to have_content @no
	expect(page).to have_content @title
end

def basic_auth(username, password)
	if page.driver.respond_to?(:basic_auth)
		page.driver.basic_auth(username, password)
	elsif page.driver.respond_to?(:basic_authorize)
		page.driver.basic_authorize(username, password)
	elsif page.driver.respond_to?(:browser) && page.driver.browser.respond_to?(:basic_authorize)
		page.driver.browser.basic_authorize(username, password)
		puts 'browser auth OK'
	else
		puts 'auth by others'
	end
end