require 'rails_helper'

RSpec.describe ApplicationPresenter do
  describe '#background_image_url' do
    it 'renders content image' do
      content = create(:content)

      url = described_class.new(content: content).background_image_url

      expect(url).to include('universe.png')
    end

    it 'renders random content image' do
      _content = create(:content)

      url = described_class.new(content: nil).background_image_url

      expect(url).to include('universe.png')
    end
  end
end
