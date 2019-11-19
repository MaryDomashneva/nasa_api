require_relative '../../lib/waether/mars'

RSpec.describe Weather::Mars do
  let(:subject) { described_class.new }

  describe '#atmospheric_temperature' do
    it 'returns Mars atmospheric temperature' do
      expect(subject.atmospheric_temperature).to eq ({ 'av' => -66.926, 'ct' => 174594, 'mn' => -100.238, 'mx' => -23.148 })
    end
  end

  describe '#horizontal_wind_speed' do
    it 'returns Mars horizontal wind speed' do
      expect(subject.horizontal_wind_speed).to eq ({ 'av' => 5.558, 'ct' => 70446, 'mn' => 0.165, 'mx' => 21.737 })
    end
  end

  describe '#atmospheric_pressure' do
    it 'returns Mars atmospheric pressure' do
      expect(subject.atmospheric_pressure).to eq ({ 'av' => 5.558, 'ct' => 70446, 'mn' => 0.165, 'mx' => 21.737 })
    end
  end

  describe '#wind_direction' do
    it 'returns Mars wind direction' do
      expect(subject.wind_direction).to eq ({
        'compass_degrees'=>157.5,
        'compass_point'=>'SSE',
        'compass_right'=>0.382683432365,
        'compass_up'=>-0.923879532511,
        'ct'=>17984
      })
    end
  end

  describe '#season' do
    it 'returns Mars season' do
      expect(subject.season).to eq ('spring')
    end
  end
end
