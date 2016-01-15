require('rspec')
require('word')
require('definition')

##############################-Word-##############################

describe('Word') do
  before() do
    Word.clear()
  end

  describe('#name') do
    it('returns the word entered') do
      test_word = Word.new('susurrus')
      expect(test_word.name()).to(eq('susurrus'))
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
      test_word.save
      expect(Word.all()).to(eq([test_word]))
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
      test_word.id()
      expect(test_word.id()).to(eq(1))
    end
  end

  describe('.find') do
    it('finds a word based on id number') do
      test_word = Word.new('fallow')
      test_word.save()
      test_word2 = Word.new('conniption')
      test_word2.save()
      expect(Word.find(test_word.id())).to(eq(test_word))
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
      test_def = Definition.new('Informal. anything unpredictable, risky, or problematical; gamble.')
      test_def.save
      expect(Definition.all()).to(eq([test_def]))
    end
  end

  describe('.clear') do
    it('empties the array') do
      expect(Definition.clear()).to(eq([]))
    end
  end

end
