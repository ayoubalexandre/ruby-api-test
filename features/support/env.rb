require 'httparty'
require 'pry'
require 'yaml'
require 'allure-cucumber'
require 'cucumber'
require 'faker'
require 'json'
require 'parallel_tests'
require 'pry'
require 'rspec'
require 'rubocop'

require_relative 'helper'

ENVIRONMENT_TYPE ||= ENV['ENVIRONMENT_TYPE']
DATA = YAML.load_file("features/support/data/data.yaml")
URL_VR = YAML.load_file(File.expand_path('../../config/environment.yml', __dir__))['environment']['vr_api']['url']

#Allure
AllureCucumber.configure do |c|
    c.clean_results_directory = true
    c.results_directory = 'allure-results'
    c.link_tms_pattern = 'https://example.org/tms/{}'
    c.link_issue_pattern = 'https://example.org/issue/{}'
    c.tms_prefix = 'TMS_'
    c.issue_prefix = 'ISSUE_'
end

World(HelperRequests)
