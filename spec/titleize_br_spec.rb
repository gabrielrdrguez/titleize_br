# frozen_string_literal: true

RSpec.describe TitleizeBr do
  it 'has a version number' do
    expect(TitleizeBr::VERSION).not_to be nil
  end

  describe '.titleize' do
    TitleizeBr::CONNECTIVES.each do |connective|
      context "when #{connective} appears at the beginning" do
        it 'capitalizes' do
          titleized_string = TitleizeBr.titleize("#{connective} teste de titleize")

          expect(titleized_string).to eq("#{connective.capitalize} Teste de Titleize")
        end
      end

      context "when a #{connective} appears in the middle" do
        it 'uses lowercase' do
          titleized_string = TitleizeBr.titleize("teste #{connective} titleize")

          expect(titleized_string).to eq("Teste #{connective.downcase} Titleize")
        end
      end

      context 'when string is upper case' do
        it 'titleizes' do
          titleized_string = TitleizeBr.titleize('O TESTE DE TITLEIZE')

          expect(titleized_string).to eq('O Teste de Titleize')
        end
      end

      context 'when string is lower case' do
        it 'titleizes' do
          titleized_string = TitleizeBr.titleize('o teste de titleize')

          expect(titleized_string).to eq('O Teste de Titleize')
        end
      end
    end
  end
end
