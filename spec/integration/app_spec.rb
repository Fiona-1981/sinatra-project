require 'spec_helper'
require 'rack/test'
require_relative '../../app'

describe Application do
  include Rack::Test::Methods

  let(:app) { Application.new }

  context 'GET /names' do
    xit 'returns 200 OK and list of names' do
      response = get('/names')
      expect(response.status).to be(200)
      expect(response.body).to eq("Julia, Mary, Karim")
    end
  end

  context 'POST /sort-names' do
    xit "returns list of names in alphabetical order" do
      response = post('/sort-names')
      expect(response.status).to be(200)
      expect(response.body).to eq("Alice,Joe,Julia,Kieran,Zoe")
    end
  end

  context 'GET /hello' do
    it "returns a greeting message as an HTML page" do
    response = post('/hello')
    expect(response.status).to be(200)
    expect(response.body).to eq("Hello!")
    end
  end

end