require 'helper'

describe NewEden::API::Map do
  let(:client){ NewEden::Client.new }
  describe '#kills' do
    subject{ client.map.kills }
    context :with_token do
      before{ client.vCode = '1234' }
      example{ expect(subject.version).to eq('2') }
      example{ expect(subject.result.rowset.row).not_to be_empty }
    end
    context :without_token do
      example{ expect(subject.version).to eq('2') }
      example{ expect(subject.result.rowset.row).not_to be_empty }
    end
  end
end
