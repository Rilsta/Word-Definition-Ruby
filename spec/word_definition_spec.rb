require('rspec')
require('word')
require('definition')

##############################-Word-##############################

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

  describe('.clear') do
    it('empties the array') do
      expect(Word.clear()).to(eq([]))
    end
  end

  describe('#id') do
    it('ties word arrays to a unique identification number') do
      test_word = Word.new('fallow')
      test_word.save()
      test_word2 = Word.new('cultivate')
      test_word2.save()
      expect(test_word.id()).to(eq(1))
    end
  end
end

##############################-Definition-##############################

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

  describe('#save') do
    it('saves input to the .all array') do
      test_def = Definition.new('crapshoot')
      expect(test_def.save()).to(eq(['crapshoot']))
    end
  end

  describe('.clear') do
    it('empties the array') do
      expect(Definition.clear()).to(eq([]))
    end
  end

end
