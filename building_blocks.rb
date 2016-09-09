def caesar_cipher(phrase, shift)
	cipherText = ""
	phrase.each_byte do |letter|
		if letter.between?(65,90)
			cipherText += (((letter - 65) + shift) % 26 + 65).chr
		elsif letter.between?(97,122)
			cipherText += (((letter - 97) + shift) % 26 + 97).chr
		else cipherText += letter.chr
		end
	end
	return cipherText
end

def stock_picker(prices)
	size = prices.length
	max, buy, sell = 0, 0, 0
	for i in (0...size)
		for j in (i...size)
			profit = prices[j] - prices[i]
			if profit > max
				buy, sell = i, j 
				max = profit
			end
		end
	end
	return [buy, sell]	
end

def substrings(phrase, dictionary)
	output = Hash.new(0)
	dictionary.each do |word|
		phrase.downcase.scan(word).each do |sub|
			output[sub] += 1
		end
	end
	return output
end