# frozen_string_literal: true

# spec/caesar_cipher_spec.rb
require './Basic Projects/caesar_cipher'

describe '#caesar_cipher' do
  it 'rotates the string forward' do
    expect(caesar_cipher('its a super test', 5)).to eql('nyx f xzujw yjxy')
  end
  it 'rotates the string backwards' do
    expect(caesar_cipher('nyx f xzujw yjxy', -5)).to eql('its a super test')
  end
  it 'corrects for exceeding ord range' do
    expect(caesar_cipher('its a super test', 30)).to eql('nyx f xzujw yjxy')
  end
end
