require 'spec_helper'
require_relative '../lib/api_client'

describe ApiClient do
  describe '#get_request' do
    subject(:client) { ApiClient.new }

    let(:path) { '/_any_' }
    let(:response_klass) { Data.define(:code, :body) }

    before { allow(Net::HTTP).to receive(:get_response).and_return(response) }

    context 'when response status is ok' do
      let(:response) { response_klass.new(code: 200, body: '{  "id": 123 }') }

      it { expect(client.get_request(path)).to eq({ 'id' => 123 }) }
    end
  end
end
