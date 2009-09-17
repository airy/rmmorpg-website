module Coded

	def create
		self.code = generate_code
		super
	end
	
private
  def generate_code(chunks=2)
    ("%04x"*chunks % ([nil]*chunks).map { rand(2**16) }).upcase
  end
	
end