require 'spec_helper'
require 'json'
require './app/services/exchange_service'

describe 'Currency' do
  it 'exchange' do
    amount = rand(0..9999)
    res = ExchangeService.new("USD","BRL",amount).perform
    expect(res).to be_kind_of(Numeric)
    expect(res).not_to be_zero
    expect(amount).not_to be_zero
  end
end