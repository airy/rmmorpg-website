class ActiveRecord::Base 
  # Generates a pseudo-random string in hex format (0..9+A..F)
  # which contains chunk*16 bits of randomness.
  def generate_code(chunks=2)
    ("%04x"*chunks % ([nil]*chunks).map { rand(2**16) }).upcase
  end
  
end