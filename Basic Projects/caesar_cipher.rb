# frozen_string_literal: true

def caesar_cipher(string, shift_factor)
  exploded_chars = string.chars
  exploded_ords = exploded_chars.map(&:ord)
  shifted_ords = []
  exploded_ords.each do |ord|
    case ord
    when 65..90
      ord += shift_factor
      ord -= 25 if ord > 90
      ord.chr
      shifted_ords.push(ord)
    when 97..122
      ord += shift_factor
      ord -= 25 if ord > 122
      chr = ord.chr
      shifted_ords.push(chr)
    else
      chr = ord.chr
      shifted_ords.push(chr)
    end
  end
  shifted_ords.join
end
