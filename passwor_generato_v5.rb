class Passworgenerator

  ALPHABET=('a'..'z').to_a
  VOWELS=%w(a e o i y u)
  CONSONANTS=ALPHABET-VOWELS

  def initialize

    @password = Array.new

  end

  def generation(size)

    vowel = [true,false].sample
    size.times do |x|
        
      @password << Passworgenerator::VOWELS.sample if vowel
      @password << Passworgenerator::CONSONANTS.sample unless vowel
      vowel = !vowel

    end

  end

end


