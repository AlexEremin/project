class Passworgenerator
  PASSWORDSIZE=6
  ALPHABET=('a'..'z').to_a
  VOWELS=%w(a e o i y u)
  CONSONANTS=ALPHABET-VOWELS
  def newpassword
    password = []
    i=0
    while i<Passworgenerator::PASSWORDSIZE do
      if i%2 == 0  
        password[i] = Passworgenerator::CONSONANTS.sample
      else
      
        password[i] = Passworgenerator::VOWELS.sample 
      end
      i+=1    
    end
    print password  
  end
  getpassword = Passworgenerator.new
  getpassword.newpassword 
end
STDIN.getc