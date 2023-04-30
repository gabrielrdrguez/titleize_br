# frozen_string_literal: true

RSpec.describe String do
  describe '#titleize_br' do
    it 'calls TitleizeBr with self' do
      string = 'string'

      expect(TitleizeBr).to receive(:titleize).with(string)

      string.titleize_br
    end
  end
end
