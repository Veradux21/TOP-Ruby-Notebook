
def caesar_cipher(string, shift_factor)
  exploded_chars = string.split("")
  exploded_ords = exploded_chars.map {|char| char.ord}
  shifted_ords = []
  exploded_ords.each do |ord|
    case ord
    when 65..90
      ord = ord + shift_factor
      ord -= 25 if ord > 90
      chr = ord.chr
      shifted_ords.push(ord)
    when 97..122
      ord = ord + shift_factor
      ord -= 25 if ord > 122
      chr = ord.chr
      shifted_ords.push(chr)
    else
      chr = ord.chr
      shifted_ords.push(chr)
    end
  end
  shifted_ords.join("")
end

p caesar_cipher("its a super test", 5)
p caesar_cipher("nyx f xzujw yjxy", -5)