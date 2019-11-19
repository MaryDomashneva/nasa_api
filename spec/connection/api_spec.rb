require_relative '../../lib/connection/api'

RSpec.describe Connection::API do
  describe '.get' do

    before do
      allow(Net::HTTP).to receive(:get).and_return({'weather' => 'good'})
    end

    it 'returns response from url' do
      response = Connection::API.get
      expect(response).to eq ({'weather' => 'good'})
    end
  end
end
