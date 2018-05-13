require 'spec_helper'
describe 'dns_zones' do
  context 'with default values for all parameters' do
    it { should contain_class('dns_zones') }
  end
end
