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

  describe('.all') do
    it('returns an empty array') do
      expect(Word.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('saves input to the .all array') do
      test_word = Word.new('crapshoot')
      expect(test_word.save()).to(eq(['crapshoot']))
    end
  end
end

describe('Definition') do
  describe('#new_def') do
    it('returns the definition entered') do
      test_def = Definition.new('a soft murmuring or rustling sound; whisper.')
      expect(test_def.new_def()).to(eq('a soft murmuring or rustling sound; whisper.'))
    end
  end

  describe('.all') do
    it('returns an empty array') do
      expect(Definition.all()).to(eq([]))
    end
  end
end
