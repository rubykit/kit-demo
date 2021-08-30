require 'database_cleaner'

RSpec.configure do |config|

  # TODO: optimize this per category of test. Maybe add a `:db` flag?
  config.before(:each) do
    [KitDemo::Main::Models::WriteRecord].each do |model|
      cleaner = DatabaseCleaner[:active_record, db: model]
      cleaner.clean_with(:truncation)
      cleaner.strategy = :truncation
    end
  end

end
