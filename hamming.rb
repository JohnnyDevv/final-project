class Hamming
	def self.compute(strand1, strand2)
		raise ArgumentError if strand1.length != strand2.length
		count = 0
		strand2_chars = strand2.split("")
		strand1.split("").each.with_index do |c, i|
			count += 1 if c != strand2_chars[i]
		end
		count
	end
end	
