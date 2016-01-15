require('rspec')
require('word')
require('definition')

describe('Word') do
  describe('#new_word') do
    it('returns the word entered') do
      test_word = Word.new('susurrus')
      expect(test_word.new_word()).to(eq('susurrus'))
    end
  end
end
