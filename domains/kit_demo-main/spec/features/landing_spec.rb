require_relative '../rails_helper' # rubocop:disable Naming/FileName

describe 'Landing', type: :feature do

  it 'loads the main landing' do
    path  = route_uid_to_path('web|home')
    texts = I18n.t('kit_demo.main.app.name_parts')

    visit               path
    assert_current_path path

    header = find('header')
    texts.each do |text|
      expect(header.has_content?(text)).to be true
    end
  end

end
