require './classes/corrector'

describe Corrector do
  context 'Given a word' do
    it 'apitalize the first character' do
      corrector = Corrector.new
      expect(corrector.correct_name('juan')).to(eq('Juan'))
    end
  end
end
