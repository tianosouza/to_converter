require 'rails_helper'

RSpec.describe ConverterToController, type: :controller do
  before do
    @controller = ConverterToController.new
  end

  describe '#px_to_rem' do
    it 'converte 16px para 1rem usando o tamanho da fonte raiz padrão' do
      expect(@controller.send(:px_to_rem, 16)).to eq(1.0)
    end

    it 'converte 32px para 2rem usando o tamanho da fonte raiz padrão' do
      expect(@controller.send(:px_to_rem, 32)).to eq(2.0)
    end

    it 'converte 32px para 1.6rem usando um tamanho de fonte raiz personalizado de 20px' do
      expect(@controller.send(:px_to_rem, 32, 20)).to eq(1.6)
    end

    it 'converte 10px para 0.5rem usando um tamanho de fonte raiz personalizado de 20px' do
      expect(@controller.send(:px_to_rem, 10, 20)).to eq(0.5)
    end
  end

  describe '#rem_to_px' do
    it 'converte 1rem para 16px usando o tamanho da fonte raiz padrão' do
      expect(@controller.send(:rem_to_px, 1)).to eq(16.0)
    end

    it 'converte 2rem para 32px usando o tamanho da fonte raiz padrão' do
      expect(@controller.send(:rem_to_px, 2)).to eq(32.0)
    end

    it 'converte 1.6rem para 32px usando um tamanho de fonte raiz personalizado de 20px' do
      expect(@controller.send(:rem_to_px, 1.6, 20)).to eq(32.0)
    end

    it 'converte 0.5rem para 10px usando um tamanho de fonte raiz personalizado de 20px' do
      expect(@controller.send(:rem_to_px, 0.5, 20)).to eq(10.0)
    end
  end
end
