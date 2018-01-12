RSpec.configure do |config|
  config.around(:each, :slow) do |example|
    default_max_wait_time = Capybara.default_max_wait_time
    Capybara.default_max_wait_time = 5
    example.run
    Capybara.default_max_wait_time = default_max_wait_time
  end
end
