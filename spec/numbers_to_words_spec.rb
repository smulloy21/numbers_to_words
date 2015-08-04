require('rspec')
require('numbers_to_words.rb')

describe('Fixnum#numbers_to_words') do
  it('gives the written name of a single digit') do
    expect(3.numbers_to_words()).to(eq("three"))
  end
  it('gives the written name of a double-digit number less than 20') do
    expect(17.numbers_to_words()).to(eq("seventeen"))
  end
  it('gives the written name of any double-digit number') do
    expect(20.numbers_to_words()).to(eq("twenty"))
  end
  it('gives the written name of any three digit number') do
    expect(305.numbers_to_words()).to(eq("three hundred five"))


  end
end
